module tests2 where

open import proj using (Formula; Var; _∨_; _∧_; _=>_; ¬_; whole-DPLL; whole-sat; maybe-eval-sat)
open import Data.Bool using (Bool; true; false)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Maybe using (Maybe; nothing; just)

sat-simple :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ (Var 3)) => (¬ (Var 4))) whole-sat
  ≡ just true
sat-simple = refl

sat-DPLL :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ (Var 3)) => (¬ (Var 4))) whole-DPLL
  ≡ just true
sat-DPLL = refl

random-167-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-167-dpll = refl

random-167-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) ∧ (Var 1))) whole-sat
  ≡ just true
random-167-wsat = refl