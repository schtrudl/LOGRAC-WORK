#!/usr/bin/env python3
"""
Generate Agda SAT tests for whole-DPLL and whole-sat solvers.

Each test checks that maybe-eval-sat returns:
  - just true  for satisfiable formulas
  - nothing    for unsatisfiable formulas
"""

import random
from dataclasses import dataclass
from typing import Optional


# ---------------------------------------------------------------------------
# Formula representation
# ---------------------------------------------------------------------------


@dataclass
class Var:
    n: int

    def to_agda(self) -> str:
        return f"(Var {self.n})"

    def vars(self) -> set:
        return {self.n}


@dataclass
class Not:
    f: object

    def to_agda(self) -> str:
        return f"(¬ {self.f.to_agda()})"

    def vars(self) -> set:
        return self.f.vars()


@dataclass
class And:
    l: object
    r: object

    def to_agda(self) -> str:
        return f"({self.l.to_agda()} ∧ {self.r.to_agda()})"

    def vars(self) -> set:
        return self.l.vars() | self.r.vars()


@dataclass
class Or:
    l: object
    r: object

    def to_agda(self) -> str:
        return f"({self.l.to_agda()} ∨ {self.r.to_agda()})"

    def vars(self) -> set:
        return self.l.vars() | self.r.vars()


@dataclass
class Implies:
    l: object
    r: object

    def to_agda(self) -> str:
        return f"({self.l.to_agda()} => {self.r.to_agda()})"

    def vars(self) -> set:
        return self.l.vars() | self.r.vars()


# ---------------------------------------------------------------------------
# Simple backtracking SAT solver
# ---------------------------------------------------------------------------


def evaluate(formula, assignment: dict) -> Optional[bool]:
    """Evaluate a formula given a (possibly partial) assignment."""
    if isinstance(formula, Var):
        return assignment.get(formula.n)
    elif isinstance(formula, Not):
        v = evaluate(formula.f, assignment)
        return None if v is None else not v
    elif isinstance(formula, And):
        l = evaluate(formula.l, assignment)
        r = evaluate(formula.r, assignment)
        if l is False or r is False:
            return False
        if l is True and r is True:
            return True
        return None
    elif isinstance(formula, Or):
        l = evaluate(formula.l, assignment)
        r = evaluate(formula.r, assignment)
        if l is True or r is True:
            return True
        if l is False and r is False:
            return False
        return None
    elif isinstance(formula, Implies):
        # p => q  ≡  ¬p ∨ q
        return evaluate(Or(Not(formula.l), formula.r), assignment)
    raise ValueError(f"Unknown formula type: {type(formula)}")


def solve(formula) -> Optional[dict]:
    """Return a satisfying assignment or None if UNSAT."""
    variables = sorted(formula.vars())

    def backtrack(idx, assignment):
        if idx == len(variables):
            result = evaluate(formula, assignment)
            return assignment if result is True else None
        var = variables[idx]
        for val in [True, False]:
            assignment[var] = val
            # Early exit: if formula is already False, prune
            if evaluate(formula, assignment) is False:
                continue
            result = backtrack(idx + 1, assignment)
            if result is not None:
                return result
        del assignment[var]
        return None

    return backtrack(0, {})


def is_sat(formula) -> bool:
    return solve(formula) is not None


# ---------------------------------------------------------------------------
# Formula generators
# ---------------------------------------------------------------------------


def random_formula(max_vars: int = 4, depth: int = 3, seed=None) -> object:
    rng = random.Random(seed)

    def gen(d):
        if d == 0 or rng.random() < 0.25:
            return Var(rng.randint(1, max_vars))
        choice = rng.randint(0, 3)
        if choice == 0:
            return Not(gen(d - 1))
        elif choice == 1:
            return And(gen(d - 1), gen(d - 1))
        elif choice == 2:
            return Or(gen(d - 1), gen(d - 1))
        else:
            return Implies(gen(d - 1), gen(d - 1))

    return gen(depth)


# ---------------------------------------------------------------------------
# Hand-crafted formulas (mix of SAT and UNSAT)
# ---------------------------------------------------------------------------


def make_handcrafted() -> list:
    """Return list of (name, formula) pairs."""
    v = [None] + [Var(i) for i in range(1, 6)]  # v[1]..v[5]

    formulas = [
        # SAT
        ("sat-disjunction", Or(v[1], v[2])),
        ("sat-conjunction", And(v[1], v[2])),
        ("sat-implication", Implies(v[1], v[2])),
        ("sat-complex-1", And(Or(v[1], v[2]), Or(Not(v[1]), v[3]))),
        ("sat-complex-2", Implies(And(v[1], v[2]), Or(v[3], v[4]))),
        ("sat-implies-self", Implies(v[1], v[1])),
        ("sat-nested-or", Or(And(v[1], v[2]), And(Not(v[1]), v[3]))),
        (
            "sat-three-clause",
            And(Or(v[1], v[2]), And(Or(v[2], v[3]), Or(Not(v[1]), v[3]))),
        ),
        # From the provided test
        (
            "sat-provided-example",
            Implies(And(Or(Or(v[1], v[2]), v[3]), v[3]), Not(v[4])),
        ),
        # UNSAT
        ("unsat-contradiction", And(v[1], Not(v[1]))),
        ("unsat-both-and-neg", And(And(v[1], Not(v[1])), v[2])),
        ("unsat-triple-contradiction", And(v[1], And(Not(v[1]), v[2]))),
        ("unsat-implies-false", And(v[1], And(Implies(v[1], v[2]), Not(v[2])))),
    ]

    return formulas


# ---------------------------------------------------------------------------
# Test generation
# ---------------------------------------------------------------------------


def agda_expected(formula) -> str:
    return "just true" if is_sat(formula) else "nothing"


def test_name_dpll(name: str) -> str:
    return f"{name}-dpll"


def test_name_sat(name: str) -> str:
    return f"{name}-wsat"


def generate_test(test_id: str, formula, solver: str) -> str:
    expected = agda_expected(formula)
    agda_formula = formula.to_agda()
    lines = [
        f"{test_id} :",
        f"  maybe-eval-sat {agda_formula} {solver}",
        f"  ≡ {expected}",
        f"{test_id} = refl",
        "",
    ]
    return "\n".join(lines)


def generate_random_tests(
    count: int, max_vars: int = 4, depth: int = 3, base_seed: int = 42
) -> list:
    tests = []
    for i in range(count):
        formula = random_formula(max_vars=max_vars, depth=depth, seed=base_seed + i)
        name = f"random-{i + 1}"
        tests.append((name, formula))
    return tests


# ---------------------------------------------------------------------------
# Main: produce the Agda file
# ---------------------------------------------------------------------------


def main():
    handcrafted = make_handcrafted()
    # po CLI je že n=20 dovolj ampak jaz sem vzel še več
    random_tests = generate_random_tests(count=1000, max_vars=4, depth=3, base_seed=100)

    all_tests = handcrafted + random_tests

    header = """\
module generated-tests where

open import proj using (Formula; Var; _∨_; _∧_; _=>_; ¬_; whole-DPLL; whole-sat; maybe-eval-sat)
open import Data.Bool using (Bool; true; false)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Maybe using (Maybe; nothing; just)

"""

    blocks = [header]

    for name, formula in all_tests:
        sat = is_sat(formula)
        expected_str = "just true" if sat else "nothing"
        print(f"  {name}: {'SAT' if sat else 'UNSAT'}  → {expected_str}")

        # Test with whole-DPLL
        blocks.append(generate_test(test_name_dpll(name), formula, "whole-DPLL"))
        # Test with whole-sat
        blocks.append(generate_test(test_name_sat(name), formula, "whole-sat"))

    output = "\n".join(blocks)

    out_path = "generated-tests.agda"
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(output)

    print(f"\nWrote {len(all_tests) * 2} tests to {out_path}")


if __name__ == "__main__":
    main()
