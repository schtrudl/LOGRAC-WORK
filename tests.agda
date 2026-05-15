module tests where

open import proj using (Assignment; eval; eval-nnf; eval-cnf; SAT; Formula; Var; _∨_; _∧_; _=>_; ¬_; NNF; lit; ¬Var; to-nnf; DPLL; simplfy; sat; unsat; find-unit; find-pure; simply-lit; some; simplfy-dis)
open import Data.Nat using (ℕ)
open import Data.List using (List; []; _∷_)
open import Data.Bool using (Bool; true; false)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Maybe using (Maybe; nothing; just)
open import Data.Product using (_×_; _,_)

isJust : {A : Set} → Maybe A → Bool
isJust nothing = false
isJust (just _) = true

phi : Formula
phi = (((Var 1) ∨ (Var 2)) ∧ (Var 3)) => (¬ (Var 4))

expected-nnf : NNF
expected-nnf = ((((lit (¬Var 1)) ∧ (lit (¬Var 2))) ∨ (lit (¬Var 3)))) ∨ (lit (¬Var 4))

test-nnf : to-nnf phi ≡ expected-nnf
test-nnf = refl

σ : Assignment
σ = 
  (0 , true) ∷
  (1 , false) ∷
  (2 , true) ∷
  []

test-lit-true : eval-cnf σ (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 0))) ≡ just true
test-lit-true = refl

test-lit-false : eval-cnf σ (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 1))) ≡ just false
test-lit-false = refl

test-lit-neg : eval-cnf σ (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1))) ≡ just true
test-lit-neg = refl

-- CNF

-- true ∨ false = true
test-disj-1 :
  eval-cnf σ (proj.CNF.dis (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1))))
  ≡ just true
test-disj-1 = refl

-- false ∨ false = false
test-disj-2 :
  eval-cnf σ (proj.CNF.dis (proj.Disjunct._∨_ (proj.Literal.Var 1) (proj.Disjunct.lit (proj.Literal.¬Var 0))))
  ≡ just false
test-disj-2 = refl

-- (true) ∧ (false) = false
test-cnf-1 :
  eval-cnf σ
    (proj.CNF._∧_ (proj.Disjunct.lit (proj.Literal.Var 0)) (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 1))))
  ≡ just false
test-cnf-1 = refl

-- (true) ∧ (true) = true
test-cnf-2 :
  eval-cnf σ
    (proj.CNF._∧_ (proj.Disjunct.lit (proj.Literal.Var 0)) (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 2))))
  ≡ just true
test-cnf-2 = refl

-- mixed clause
test-cnf-3 :
  eval-cnf σ
    (proj.CNF._∧_
      (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.¬Var 1)))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 2))))
  ≡ just true
test-cnf-3 = refl

-- missing variable → nothing
test-missing :
  eval-cnf σ (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 99)))
  ≡ nothing
test-missing = refl

-- propagation of nothing in CNF
test-propagation :
  eval-cnf σ
    (proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 99))))
  ≡ nothing
test-propagation = refl

-- tautology: p ∨ ¬p = true
test-tautology :
  eval-cnf σ
    (proj.CNF.dis (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.¬Var 0))))
  ≡ just true
test-tautology = refl

-- contradiction: p ∧ ¬p = false
test-contradiction :
  eval-cnf σ
    (proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 0))))
  ≡ just false
test-contradiction = refl

-- NNF

test-nnf-lit-true :
  eval-nnf σ (proj.lit (proj.Literal.Var 0)) ≡ just true
test-nnf-lit-true = refl

test-nnf-lit-false :
  eval-nnf σ (proj.lit (proj.Literal.Var 1)) ≡ just false
test-nnf-lit-false = refl

test-nnf-neg :
  eval-nnf σ (proj.lit (proj.Literal.¬Var 1)) ≡ just true
test-nnf-neg = refl

test-nnf-and-true :
  eval-nnf σ (proj._∧_ (proj.lit (proj.Literal.Var 0)) (proj.lit (proj.Literal.Var 2))) ≡ just true
test-nnf-and-true = refl

test-nnf-and-false :
  eval-nnf σ (proj._∧_ (proj.lit (proj.Literal.Var 0)) (proj.lit (proj.Literal.Var 1))) ≡ just false
test-nnf-and-false = refl

test-nnf-or-true :
  eval-nnf σ (proj._∨_ (proj.lit (proj.Literal.Var 1)) (proj.lit (proj.Literal.Var 2))) ≡ just true
test-nnf-or-true = refl

test-nnf-or-false :
  eval-nnf σ (proj._∨_ (proj.lit (proj.Literal.Var 1)) (proj.lit (proj.Literal.¬Var 2))) ≡ just false
test-nnf-or-false = refl

test-nnf-missing :
  eval-nnf σ (proj.lit (proj.Literal.Var 99)) ≡ nothing
test-nnf-missing = refl

-- Eval

test-eval-var :
  eval σ (proj.Var 0) ≡ just true
test-eval-var = refl

test-eval-not :
  eval σ (proj.¬_ (proj.Var 1)) ≡ just true
test-eval-not = refl

test-eval-and :
  eval σ (proj._∧_ (proj.Var 0) (proj.Var 2)) ≡ just true
test-eval-and = refl

test-eval-and-false :
  eval σ (proj._∧_ (proj.Var 0) (proj.Var 1)) ≡ just false
test-eval-and-false = refl

test-eval-or :
  eval σ (proj._∨_ (proj.Var 1) (proj.Var 2)) ≡ just true
test-eval-or = refl

test-double-neg :
  eval σ (proj.¬_ (proj.¬_ (proj.Var 0))) ≡ just true
test-double-neg = refl

-- CROSS CHECK

test-nnf-correctness :
  eval σ (proj._∨_ (proj.Var 0) (proj.Var 1))
  ≡ eval-nnf σ (proj.to-nnf (proj._∨_ (proj.Var 0) (proj.Var 1)))
test-nnf-correctness = refl

-- SAT

sat-simple :
  isJust (SAT (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 0))))
  ≡ true
sat-simple = refl

sat-contradiction :
  SAT
    (proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 0))))
  ≡ nothing
sat-contradiction = refl

sat-two-vars :
  isJust
    (SAT
      (proj.CNF._∧_
        (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))))
  ≡ true
sat-two-vars = refl

sat-unsat-two-vars :
  SAT
    (proj.CNF._∧_
      (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
      (proj.CNF._∧_
        (proj.Disjunct.lit (proj.Literal.¬Var 0))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))))
  ≡ nothing
sat-unsat-two-vars = refl

-- SAT

dpll-simple :
  isJust (DPLL (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 0))))
  ≡ true
dpll-simple = refl

find-unit-test : find-unit ((proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 0))))) ≡ just (Var 0)
find-unit-test = refl

simply-lit-test-tt : simply-lit (Var 0) (Var 0) ≡ sat
simply-lit-test-tt = refl

simply-lit-test-ft : simply-lit (¬Var 0) (Var 0) ≡ unsat
simply-lit-test-ft = refl

simply-lit-test-tf : simply-lit (Var 0) (¬Var 0) ≡ unsat
simply-lit-test-tf = refl

simply-lit-test-ff : simply-lit (¬Var 0) (¬Var 0) ≡ sat
simply-lit-test-ff = refl

simplfy-test : simplfy ((proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 0))))) (Var 0) ≡ unsat
simplfy-test = refl

-- x_0 /\ !x_0
dpll-contradiction :
  DPLL
    (proj.CNF._∧_
      (proj.Disjunct.lit (proj.Literal.Var 0))
      (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 0))))
  ≡ nothing
dpll-contradiction = refl

find-unit-x1 : find-unit (proj.CNF._∧_
        (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))) ≡ just (¬Var 1)
find-unit-x1 = refl

simplfy-dis-x1 : simplfy-dis (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1))) (¬Var 1) ≡ some (proj.Disjunct.lit (proj.Literal.Var 0))
simplfy-dis-x1 = refl

simplfy-x1 : simplfy (proj.CNF._∧_
        (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))) (¬Var 1) ≡ some (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.Var 0)))
simplfy-x1 = refl

-- (x0 \/ x1) /\ (!x1)
-- x0 = 1; x1 = 0
dpll-two-vars :
  isJust
    (DPLL
      (proj.CNF._∧_
        (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))))
  ≡ true
dpll-two-vars = refl

dpll-unsat-two-vars :
  DPLL
    (proj.CNF._∧_
      (proj.Disjunct._∨_ (proj.Literal.Var 0) (proj.Disjunct.lit (proj.Literal.Var 1)))
      (proj.CNF._∧_
        (proj.Disjunct.lit (proj.Literal.¬Var 0))
        (proj.CNF.dis (proj.Disjunct.lit (proj.Literal.¬Var 1)))))
  ≡ nothing
dpll-unsat-two-vars = refl