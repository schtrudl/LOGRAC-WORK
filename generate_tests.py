#!/usr/bin/env python3
# Yes, this file was AI assisted based on tests2.agda which I wrote myself.
"""
Generate Agda SAT tests for whole-DPLL and whole-sat solvers.

Each test checks that maybe-eval-sat returns:
  - just true  for satisfiable formulas
  - nothing    for unsatisfiable formulas
"""

import argparse
import random

from z3 import And
from z3 import Bool
from z3 import Implies
from z3 import Not
from z3 import Or
from z3 import Solver
from z3 import Z3_OP_AND
from z3 import Z3_OP_IMPLIES
from z3 import Z3_OP_NOT
from z3 import Z3_OP_OR
from z3 import Z3_OP_UNINTERPRETED
from z3 import sat

parser = argparse.ArgumentParser(description="Generate Agda SAT tests")
parser.add_argument(
    "--n", type=int, default=1000, help="Number of random tests to generate"
)
parser.add_argument("--max-vars", type=int, default=4, help="Maximum variable index")
parser.add_argument("--depth", type=int, default=3, help="Maximum formula depth")
parser.add_argument("--seed", type=int, default=100, help="Random seed")
parser.add_argument(
    "--output", type=str, default="generated-tests.agda", help="Output file path"
)
parser.add_argument(
    "--naive",
    action="store_true",
    help="Alias for --naive-sat",
)
parser.add_argument(
    "--dpll", action="store_true", help="Generate tests for whole-DPLL solver"
)
args = parser.parse_args()

# ---------------------------------------------------------------------------
# Formula representation (Z3 expressions)
# ---------------------------------------------------------------------------


def var(n: int):
    return Bool(f"x{n}")


def z3_var_to_agda(expr) -> str:
    name = expr.decl().name()
    if isinstance(name, bytes):
        name = name.decode("utf-8")
    if not (len(name) >= 2 and name[0] == "x" and name[1:].isdigit()):
        raise ValueError(f"Expected variable name like xN, got {name!r}")
    return f"(Var {int(name[1:])})"


def z3_to_agda(expr) -> str:
    kind = expr.decl().kind()
    args_ = [expr.arg(i) for i in range(expr.num_args())]

    if kind == Z3_OP_UNINTERPRETED and expr.num_args() == 0:
        return z3_var_to_agda(expr)
    if kind == Z3_OP_NOT and len(args_) == 1:
        return f"(¬ {z3_to_agda(args_[0])})"
    if kind == Z3_OP_IMPLIES and len(args_) == 2:
        return f"({z3_to_agda(args_[0])} => {z3_to_agda(args_[1])})"
    if kind == Z3_OP_AND and len(args_) >= 2:
        acc = z3_to_agda(args_[0])
        for a in args_[1:]:
            acc = f"({acc} ∧ {z3_to_agda(a)})"
        return acc
    if kind == Z3_OP_OR and len(args_) >= 2:
        acc = z3_to_agda(args_[0])
        for a in args_[1:]:
            acc = f"({acc} ∨ {z3_to_agda(a)})"
        return acc

    raise ValueError(f"Unsupported Z3 formula node: {expr}")


# ---------------------------------------------------------------------------
# SAT solver via z3-solver dependency
# ---------------------------------------------------------------------------


def is_sat(formula) -> bool:
    solver = Solver()
    solver.add(formula)
    return solver.check() == sat


# ---------------------------------------------------------------------------
# Formula generators
# ---------------------------------------------------------------------------


def random_formula(max_vars: int = 4, depth: int = 3, seed=None) -> object:
    rng = random.Random(seed)

    def gen(d):
        if d == 0 or rng.random() < 0.25:
            return var(rng.randint(1, max_vars))
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
    v = [None] + [var(i) for i in range(1, 6)]  # v[1]..v[5]

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
        (
            "unsat-implies-false",
            And(v[1], And(Implies(v[1], v[2]), Not(v[2]))),
        ),
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
    agda_formula = z3_to_agda(formula)
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


handcrafted = make_handcrafted()
# po CLI je že n=20 dovolj ampak jaz sem vzel še več
random_tests = generate_random_tests(
    count=args.n, max_vars=args.max_vars, depth=args.depth, base_seed=args.seed
)

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
    sat_result = is_sat(formula)
    expected_str = "just true" if sat_result else "nothing"
    print(f"  {name}: {'SAT' if sat_result else 'UNSAT'}  → {expected_str}")

    # Test with whole-DPLL
    if args.dpll:
        blocks.append(generate_test(test_name_dpll(name), formula, "whole-DPLL"))
    if args.naive:
        blocks.append(generate_test(test_name_sat(name), formula, "whole-sat"))

output = "\n".join(blocks)

with open(args.output, "w", encoding="utf-8") as f:
    f.write(output)

selected_solvers = int(args.dpll) + int(args.naive)
print(f"\nWrote {len(all_tests) * selected_solvers} tests to {args.output}")
