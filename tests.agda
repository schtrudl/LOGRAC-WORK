module tests where

open import proj using (Assignment; eval-cnf; CNF; Disjunct; Literal)
open import Data.Nat using (ℕ)
open import Data.List using (List; []; _∷_)
open import Data.Bool using (Bool; true; false)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Binary using (Decidable; DecidableEquality)
open import Data.List using (List; []; _∷_; _++_; length)
open import Data.Maybe using (Maybe; nothing; just)
open import Relation.Nullary using (Dec; yes; no; ¬_)
open import Data.List.Relation.Unary.Any using (Any; any?; here; there)
open import Data.Bool using (Bool; true; false; not)

σ : Assignment
σ = 
  (0 , true) ∷
  (1 , false) ∷
  (2 , true) ∷
  []

test-lit-true : eval-cnf σ (CNF.dis (proj.Disjunct.lit (Literal.Var 0))) ≡ just true
test-lit-true = refl

test-lit-false : eval-cnf σ (CNF.dis (proj.Disjunct.lit (Literal.Var 1))) ≡ just false
test-lit-false = refl

test-lit-neg : eval-cnf σ (CNF.dis (proj.Disjunct.lit (Literal.¬Var 1))) ≡ just true
test-lit-neg = refl


-- true ∨ false = true
test-disj-1 :
  eval-cnf σ (CNF.dis (proj.Disjunct._∨_ (Literal.Var 0) (proj.Disjunct.lit (Literal.Var 1))))
  ≡ just true
test-disj-1 = refl

-- false ∨ false = false
test-disj-2 :
  eval-cnf σ (CNF.dis (proj.Disjunct._∨_ (Literal.Var 1) (proj.Disjunct.lit (Literal.¬Var 0))))
  ≡ just false
test-disj-2 = refl

-- (true) ∧ (false) = false
test-cnf-1 :
  eval-cnf σ
    (CNF._∧_ (proj.Disjunct.lit (Literal.Var 0)) (CNF.dis (proj.Disjunct.lit (Literal.Var 1))))
  ≡ just false
test-cnf-1 = refl

-- (true) ∧ (true) = true
test-cnf-2 :
  eval-cnf σ
    (CNF._∧_ (proj.Disjunct.lit (Literal.Var 0)) (CNF.dis (proj.Disjunct.lit (Literal.Var 2))))
  ≡ just true
test-cnf-2 = refl

-- mixed clause
test-cnf-3 :
  eval-cnf σ
    (CNF._∧_
      (proj.Disjunct._∨_ (Literal.Var 0) (proj.Disjunct.lit (Literal.¬Var 1)))
      (CNF.dis (proj.Disjunct.lit (Literal.Var 2))))
  ≡ just true
test-cnf-3 = refl

-- missing variable → nothing
test-missing :
  eval-cnf σ (CNF.dis (proj.Disjunct.lit (Literal.Var 99)))
  ≡ nothing
test-missing = refl

-- propagation of nothing in CNF
test-propagation :
  eval-cnf σ
    (CNF._∧_
      (proj.Disjunct.lit (Literal.Var 0))
      (CNF.dis (proj.Disjunct.lit (Literal.Var 99))))
  ≡ nothing
test-propagation = refl

-- tautology: p ∨ ¬p = true
test-tautology :
  eval-cnf σ
    (CNF.dis (proj.Disjunct._∨_ (Literal.Var 0) (proj.Disjunct.lit (Literal.¬Var 0))))
  ≡ just true
test-tautology = refl

-- contradiction: p ∧ ¬p = false
test-contradiction :
  eval-cnf σ
    (CNF._∧_
      (proj.Disjunct.lit (Literal.Var 0))
      (CNF.dis (proj.Disjunct.lit (Literal.¬Var 0))))
  ≡ just false
test-contradiction = refl