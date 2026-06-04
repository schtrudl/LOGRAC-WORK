module generated-tests where

open import proj using (Formula; Var; _∨_; _∧_; _=>_; ¬_; whole-DPLL; whole-sat; maybe-eval-sat)
open import Data.Bool using (Bool; true; false)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Maybe using (Maybe; nothing; just)


sat-disjunction-dpll :
  maybe-eval-sat ((Var 1) ∨ (Var 2)) whole-DPLL
  ≡ just true
sat-disjunction-dpll = refl

sat-disjunction-wsat :
  maybe-eval-sat ((Var 1) ∨ (Var 2)) whole-sat
  ≡ just true
sat-disjunction-wsat = refl

sat-conjunction-dpll :
  maybe-eval-sat ((Var 1) ∧ (Var 2)) whole-DPLL
  ≡ just true
sat-conjunction-dpll = refl

sat-conjunction-wsat :
  maybe-eval-sat ((Var 1) ∧ (Var 2)) whole-sat
  ≡ just true
sat-conjunction-wsat = refl

sat-implication-dpll :
  maybe-eval-sat ((Var 1) => (Var 2)) whole-DPLL
  ≡ just true
sat-implication-dpll = refl

sat-implication-wsat :
  maybe-eval-sat ((Var 1) => (Var 2)) whole-sat
  ≡ just true
sat-implication-wsat = refl

sat-complex-1-dpll :
  maybe-eval-sat (((Var 1) ∨ (Var 2)) ∧ ((¬ (Var 1)) ∨ (Var 3))) whole-DPLL
  ≡ just true
sat-complex-1-dpll = refl

sat-complex-1-wsat :
  maybe-eval-sat (((Var 1) ∨ (Var 2)) ∧ ((¬ (Var 1)) ∨ (Var 3))) whole-sat
  ≡ just true
sat-complex-1-wsat = refl

sat-complex-2-dpll :
  maybe-eval-sat (((Var 1) ∧ (Var 2)) => ((Var 3) ∨ (Var 4))) whole-DPLL
  ≡ just true
sat-complex-2-dpll = refl

sat-complex-2-wsat :
  maybe-eval-sat (((Var 1) ∧ (Var 2)) => ((Var 3) ∨ (Var 4))) whole-sat
  ≡ just true
sat-complex-2-wsat = refl

sat-implies-self-dpll :
  maybe-eval-sat ((Var 1) => (Var 1)) whole-DPLL
  ≡ just true
sat-implies-self-dpll = refl

sat-implies-self-wsat :
  maybe-eval-sat ((Var 1) => (Var 1)) whole-sat
  ≡ just true
sat-implies-self-wsat = refl

sat-nested-or-dpll :
  maybe-eval-sat (((Var 1) ∧ (Var 2)) ∨ ((¬ (Var 1)) ∧ (Var 3))) whole-DPLL
  ≡ just true
sat-nested-or-dpll = refl

sat-nested-or-wsat :
  maybe-eval-sat (((Var 1) ∧ (Var 2)) ∨ ((¬ (Var 1)) ∧ (Var 3))) whole-sat
  ≡ just true
sat-nested-or-wsat = refl

sat-three-clause-dpll :
  maybe-eval-sat (((Var 1) ∨ (Var 2)) ∧ (((Var 2) ∨ (Var 3)) ∧ ((¬ (Var 1)) ∨ (Var 3)))) whole-DPLL
  ≡ just true
sat-three-clause-dpll = refl

sat-three-clause-wsat :
  maybe-eval-sat (((Var 1) ∨ (Var 2)) ∧ (((Var 2) ∨ (Var 3)) ∧ ((¬ (Var 1)) ∨ (Var 3)))) whole-sat
  ≡ just true
sat-three-clause-wsat = refl

sat-provided-example-dpll :
  maybe-eval-sat (((((Var 1) ∨ (Var 2)) ∨ (Var 3)) ∧ (Var 3)) => (¬ (Var 4))) whole-DPLL
  ≡ just true
sat-provided-example-dpll = refl

sat-provided-example-wsat :
  maybe-eval-sat (((((Var 1) ∨ (Var 2)) ∨ (Var 3)) ∧ (Var 3)) => (¬ (Var 4))) whole-sat
  ≡ just true
sat-provided-example-wsat = refl

unsat-contradiction-dpll :
  maybe-eval-sat ((Var 1) ∧ (¬ (Var 1))) whole-DPLL
  ≡ nothing
unsat-contradiction-dpll = refl

unsat-contradiction-wsat :
  maybe-eval-sat ((Var 1) ∧ (¬ (Var 1))) whole-sat
  ≡ nothing
unsat-contradiction-wsat = refl

unsat-both-and-neg-dpll :
  maybe-eval-sat (((Var 1) ∧ (¬ (Var 1))) ∧ (Var 2)) whole-DPLL
  ≡ nothing
unsat-both-and-neg-dpll = refl

unsat-both-and-neg-wsat :
  maybe-eval-sat (((Var 1) ∧ (¬ (Var 1))) ∧ (Var 2)) whole-sat
  ≡ nothing
unsat-both-and-neg-wsat = refl

unsat-triple-contradiction-dpll :
  maybe-eval-sat ((Var 1) ∧ ((¬ (Var 1)) ∧ (Var 2))) whole-DPLL
  ≡ nothing
unsat-triple-contradiction-dpll = refl

unsat-triple-contradiction-wsat :
  maybe-eval-sat ((Var 1) ∧ ((¬ (Var 1)) ∧ (Var 2))) whole-sat
  ≡ nothing
unsat-triple-contradiction-wsat = refl

unsat-implies-false-dpll :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) => (Var 2)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
unsat-implies-false-dpll = refl

unsat-implies-false-wsat :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) => (Var 2)) ∧ (¬ (Var 2)))) whole-sat
  ≡ nothing
unsat-implies-false-wsat = refl

random-1-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-1-dpll = refl

random-1-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-1-wsat = refl

random-2-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∨ ((Var 3) ∧ (Var 4))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-2-dpll = refl

random-2-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∨ ((Var 3) ∧ (Var 4))) ∧ (Var 2)) whole-sat
  ≡ just true
random-2-wsat = refl

random-3-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-3-dpll = refl

random-3-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-3-wsat = refl

random-4-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 4))) => (Var 2)) whole-DPLL
  ≡ just true
random-4-dpll = refl

random-4-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 4))) => (Var 2)) whole-sat
  ≡ just true
random-4-wsat = refl

random-5-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∧ (¬ (Var 2))) ∧ (Var 2)) whole-DPLL
  ≡ nothing
random-5-dpll = refl

random-5-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∧ (¬ (Var 2))) ∧ (Var 2)) whole-sat
  ≡ nothing
random-5-wsat = refl

random-6-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-6-dpll = refl

random-6-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ (Var 3)) whole-sat
  ≡ just true
random-6-wsat = refl

random-7-dpll :
  maybe-eval-sat ((Var 4) => (Var 3)) whole-DPLL
  ≡ just true
random-7-dpll = refl

random-7-wsat :
  maybe-eval-sat ((Var 4) => (Var 3)) whole-sat
  ≡ just true
random-7-wsat = refl

random-8-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-8-dpll = refl

random-8-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-8-wsat = refl

random-9-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-9-dpll = refl

random-9-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-9-wsat = refl

random-10-dpll :
  maybe-eval-sat ((¬ (Var 4)) => (¬ ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-10-dpll = refl

random-10-wsat :
  maybe-eval-sat ((¬ (Var 4)) => (¬ ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-10-wsat = refl

random-11-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ (¬ (Var 1))) => (¬ (Var 1))) whole-DPLL
  ≡ just true
random-11-dpll = refl

random-11-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ (¬ (Var 1))) => (¬ (Var 1))) whole-sat
  ≡ just true
random-11-wsat = refl

random-12-dpll :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∨ ((Var 2) => (Var 2))) ∧ (((Var 4) ∨ (Var 2)) => ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-12-dpll = refl

random-12-wsat :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∨ ((Var 2) => (Var 2))) ∧ (((Var 4) ∨ (Var 2)) => ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-12-wsat = refl

random-13-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) => (¬ (Var 4))) ∨ (((Var 3) => (Var 3)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-13-dpll = refl

random-13-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) => (¬ (Var 4))) ∨ (((Var 3) => (Var 3)) ∧ (Var 2))) whole-sat
  ≡ just true
random-13-wsat = refl

random-14-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-14-dpll = refl

random-14-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-14-wsat = refl

random-15-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-15-dpll = refl

random-15-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-15-wsat = refl

random-16-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∧ ((Var 3) ∧ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ nothing
random-16-dpll = refl

random-16-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∧ ((Var 3) ∧ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ nothing
random-16-wsat = refl

random-17-dpll :
  maybe-eval-sat ((Var 1) ∨ (((Var 3) ∧ (Var 4)) => ((Var 1) => (Var 4)))) whole-DPLL
  ≡ just true
random-17-dpll = refl

random-17-wsat :
  maybe-eval-sat ((Var 1) ∨ (((Var 3) ∧ (Var 4)) => ((Var 1) => (Var 4)))) whole-sat
  ≡ just true
random-17-wsat = refl

random-18-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-18-dpll = refl

random-18-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-18-wsat = refl

random-19-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∨ (¬ (Var 4))) ∧ (((Var 1) ∧ (Var 2)) ∨ ((Var 3) => (Var 1)))) whole-DPLL
  ≡ just true
random-19-dpll = refl

random-19-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∨ (¬ (Var 4))) ∧ (((Var 1) ∧ (Var 2)) ∨ ((Var 3) => (Var 1)))) whole-sat
  ≡ just true
random-19-wsat = refl

random-20-dpll :
  maybe-eval-sat (((Var 4) => ((Var 2) ∧ (Var 3))) ∧ ((Var 1) ∨ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-20-dpll = refl

random-20-wsat :
  maybe-eval-sat (((Var 4) => ((Var 2) ∧ (Var 3))) ∧ ((Var 1) ∨ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-20-wsat = refl

random-21-dpll :
  maybe-eval-sat (((Var 2) => (Var 3)) ∧ ((¬ (Var 3)) ∨ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-21-dpll = refl

random-21-wsat :
  maybe-eval-sat (((Var 2) => (Var 3)) ∧ ((¬ (Var 3)) ∨ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-21-wsat = refl

random-22-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-22-dpll = refl

random-22-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-22-wsat = refl

random-23-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 2))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-23-dpll = refl

random-23-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 2))) ∨ (Var 4)) whole-sat
  ≡ just true
random-23-wsat = refl

random-24-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-24-dpll = refl

random-24-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-24-wsat = refl

random-25-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-25-dpll = refl

random-25-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-25-wsat = refl

random-26-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∨ (¬ (Var 1))) ∧ (((Var 1) => (Var 3)) ∧ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-26-dpll = refl

random-26-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∨ (¬ (Var 1))) ∧ (((Var 1) => (Var 3)) ∧ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-26-wsat = refl

random-27-dpll :
  maybe-eval-sat ((Var 2) => ((Var 2) => ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-27-dpll = refl

random-27-wsat :
  maybe-eval-sat ((Var 2) => ((Var 2) => ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-27-wsat = refl

random-28-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-28-dpll = refl

random-28-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-28-wsat = refl

random-29-dpll :
  maybe-eval-sat (((Var 1) ∨ ((Var 3) ∨ (Var 3))) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-29-dpll = refl

random-29-wsat :
  maybe-eval-sat (((Var 1) ∨ ((Var 3) ∨ (Var 3))) ∧ (Var 1)) whole-sat
  ≡ just true
random-29-wsat = refl

random-30-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∧ (Var 2)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-30-dpll = refl

random-30-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∧ (Var 2)) ∨ (Var 3))) whole-sat
  ≡ just true
random-30-wsat = refl

random-31-dpll :
  maybe-eval-sat (((¬ (Var 3)) => (Var 3)) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-31-dpll = refl

random-31-wsat :
  maybe-eval-sat (((¬ (Var 3)) => (Var 3)) ∨ (Var 3)) whole-sat
  ≡ just true
random-31-wsat = refl

random-32-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-32-dpll = refl

random-32-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-32-wsat = refl

random-33-dpll :
  maybe-eval-sat ((Var 2) => ((Var 1) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-33-dpll = refl

random-33-wsat :
  maybe-eval-sat ((Var 2) => ((Var 1) ∨ (Var 4))) whole-sat
  ≡ just true
random-33-wsat = refl

random-34-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 2))) => (Var 4)) whole-DPLL
  ≡ just true
random-34-dpll = refl

random-34-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 2))) => (Var 4)) whole-sat
  ≡ just true
random-34-wsat = refl

random-35-dpll :
  maybe-eval-sat (((Var 4) ∧ (Var 4)) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-35-dpll = refl

random-35-wsat :
  maybe-eval-sat (((Var 4) ∧ (Var 4)) ∧ (Var 2)) whole-sat
  ≡ just true
random-35-wsat = refl

random-36-dpll :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ (((Var 3) ∨ (Var 3)) ∨ ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-36-dpll = refl

random-36-wsat :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ (((Var 3) ∨ (Var 3)) ∨ ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-36-wsat = refl

random-37-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 4)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-37-dpll = refl

random-37-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 4)) ∧ (Var 1))) whole-sat
  ≡ just true
random-37-wsat = refl

random-38-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-38-dpll = refl

random-38-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-38-wsat = refl

random-39-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-39-dpll = refl

random-39-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-39-wsat = refl

random-40-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-40-dpll = refl

random-40-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-40-wsat = refl

random-41-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-41-dpll = refl

random-41-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-41-wsat = refl

random-42-dpll :
  maybe-eval-sat (¬ ((Var 4) => (Var 3))) whole-DPLL
  ≡ just true
random-42-dpll = refl

random-42-wsat :
  maybe-eval-sat (¬ ((Var 4) => (Var 3))) whole-sat
  ≡ just true
random-42-wsat = refl

random-43-dpll :
  maybe-eval-sat ((Var 3) => ((Var 3) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-43-dpll = refl

random-43-wsat :
  maybe-eval-sat ((Var 3) => ((Var 3) ∨ (Var 2))) whole-sat
  ≡ just true
random-43-wsat = refl

random-44-dpll :
  maybe-eval-sat (¬ (Var 2)) whole-DPLL
  ≡ just true
random-44-dpll = refl

random-44-wsat :
  maybe-eval-sat (¬ (Var 2)) whole-sat
  ≡ just true
random-44-wsat = refl

random-45-dpll :
  maybe-eval-sat ((Var 2) => (¬ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-45-dpll = refl

random-45-wsat :
  maybe-eval-sat ((Var 2) => (¬ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-45-wsat = refl

random-46-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 3))) => (Var 2)) whole-DPLL
  ≡ just true
random-46-dpll = refl

random-46-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 3))) => (Var 2)) whole-sat
  ≡ just true
random-46-wsat = refl

random-47-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-47-dpll = refl

random-47-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-47-wsat = refl

random-48-dpll :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 1) => (Var 4))) ∧ (((Var 3) ∨ (Var 2)) => ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-48-dpll = refl

random-48-wsat :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 1) => (Var 4))) ∧ (((Var 3) ∨ (Var 2)) => ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-48-wsat = refl

random-49-dpll :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 1)) => (Var 1))) whole-DPLL
  ≡ just true
random-49-dpll = refl

random-49-wsat :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 1)) => (Var 1))) whole-sat
  ≡ just true
random-49-wsat = refl

random-50-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-50-dpll = refl

random-50-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-50-wsat = refl

random-51-dpll :
  maybe-eval-sat ((Var 3) => ((Var 1) ∧ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-51-dpll = refl

random-51-wsat :
  maybe-eval-sat ((Var 3) => ((Var 1) ∧ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-51-wsat = refl

random-52-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∨ (¬ (Var 4))) ∧ (Var 4)) whole-DPLL
  ≡ nothing
random-52-dpll = refl

random-52-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∨ (¬ (Var 4))) ∧ (Var 4)) whole-sat
  ≡ nothing
random-52-wsat = refl

random-53-dpll :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 1))) => (((Var 2) => (Var 2)) => ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-53-dpll = refl

random-53-wsat :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 1))) => (((Var 2) => (Var 2)) => ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-53-wsat = refl

random-54-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-54-dpll = refl

random-54-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-54-wsat = refl

random-55-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-55-dpll = refl

random-55-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-55-wsat = refl

random-56-dpll :
  maybe-eval-sat ((((Var 3) => (Var 2)) => (¬ (Var 1))) ∨ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-56-dpll = refl

random-56-wsat :
  maybe-eval-sat ((((Var 3) => (Var 2)) => (¬ (Var 1))) ∨ (¬ (Var 2))) whole-sat
  ≡ just true
random-56-wsat = refl

random-57-dpll :
  maybe-eval-sat (((Var 2) ∧ ((Var 4) ∧ (Var 4))) ∧ ((Var 2) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-57-dpll = refl

random-57-wsat :
  maybe-eval-sat (((Var 2) ∧ ((Var 4) ∧ (Var 4))) ∧ ((Var 2) ∧ (Var 1))) whole-sat
  ≡ just true
random-57-wsat = refl

random-58-dpll :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) ∧ (Var 2)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-58-dpll = refl

random-58-wsat :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) ∧ (Var 2)) ∧ (Var 1))) whole-sat
  ≡ just true
random-58-wsat = refl

random-59-dpll :
  maybe-eval-sat ((¬ (Var 3)) ∧ ((¬ (Var 1)) => (Var 3))) whole-DPLL
  ≡ just true
random-59-dpll = refl

random-59-wsat :
  maybe-eval-sat ((¬ (Var 3)) ∧ ((¬ (Var 1)) => (Var 3))) whole-sat
  ≡ just true
random-59-wsat = refl

random-60-dpll :
  maybe-eval-sat ((Var 2) => (¬ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-60-dpll = refl

random-60-wsat :
  maybe-eval-sat ((Var 2) => (¬ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-60-wsat = refl

random-61-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-61-dpll = refl

random-61-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-61-wsat = refl

random-62-dpll :
  maybe-eval-sat ((Var 4) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-62-dpll = refl

random-62-wsat :
  maybe-eval-sat ((Var 4) ∧ (Var 4)) whole-sat
  ≡ just true
random-62-wsat = refl

random-63-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-63-dpll = refl

random-63-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-63-wsat = refl

random-64-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) ∧ (Var 2)) => (Var 1)) whole-DPLL
  ≡ just true
random-64-dpll = refl

random-64-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) ∧ (Var 2)) => (Var 1)) whole-sat
  ≡ just true
random-64-wsat = refl

random-65-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-65-dpll = refl

random-65-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-65-wsat = refl

random-66-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-66-dpll = refl

random-66-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-66-wsat = refl

random-67-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-67-dpll = refl

random-67-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-67-wsat = refl

random-68-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-68-dpll = refl

random-68-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-68-wsat = refl

random-69-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ ((Var 1) => (Var 1))) ∨ (((Var 4) ∧ (Var 3)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-69-dpll = refl

random-69-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ ((Var 1) => (Var 1))) ∨ (((Var 4) ∧ (Var 3)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-69-wsat = refl

random-70-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 4))) ∧ (¬ ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-70-dpll = refl

random-70-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 4))) ∧ (¬ ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-70-wsat = refl

random-71-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∧ (¬ (Var 4))) ∨ ((¬ (Var 3)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-71-dpll = refl

random-71-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∧ (¬ (Var 4))) ∨ ((¬ (Var 3)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-71-wsat = refl

random-72-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 4))) => ((Var 2) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-72-dpll = refl

random-72-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 4))) => ((Var 2) ∨ (Var 2))) whole-sat
  ≡ just true
random-72-wsat = refl

random-73-dpll :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ ((Var 1) ∧ (Var 4))) ∧ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-73-dpll = refl

random-73-wsat :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ ((Var 1) ∧ (Var 4))) ∧ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-73-wsat = refl

random-74-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 2))) ∨ ((¬ (Var 1)) ∧ ((Var 3) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-74-dpll = refl

random-74-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 2))) ∨ ((¬ (Var 1)) ∧ ((Var 3) ∧ (Var 4)))) whole-sat
  ≡ just true
random-74-wsat = refl

random-75-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) => ((Var 4) ∨ (Var 3))) => (¬ ((Var 3) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-75-dpll = refl

random-75-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) => ((Var 4) ∨ (Var 3))) => (¬ ((Var 3) ∨ (Var 4)))) whole-sat
  ≡ just true
random-75-wsat = refl

random-76-dpll :
  maybe-eval-sat (¬ ((¬ (Var 4)) ∧ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-76-dpll = refl

random-76-wsat :
  maybe-eval-sat (¬ ((¬ (Var 4)) ∧ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-76-wsat = refl

random-77-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-77-dpll = refl

random-77-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-77-wsat = refl

random-78-dpll :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∧ ((Var 3) ∨ (Var 1))) => (¬ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-78-dpll = refl

random-78-wsat :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∧ ((Var 3) ∨ (Var 1))) => (¬ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-78-wsat = refl

random-79-dpll :
  maybe-eval-sat ((((Var 3) => (Var 2)) ∨ (Var 4)) => (((Var 4) ∨ (Var 2)) ∧ ((Var 4) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-79-dpll = refl

random-79-wsat :
  maybe-eval-sat ((((Var 3) => (Var 2)) ∨ (Var 4)) => (((Var 4) ∨ (Var 2)) ∧ ((Var 4) ∧ (Var 4)))) whole-sat
  ≡ just true
random-79-wsat = refl

random-80-dpll :
  maybe-eval-sat ((Var 1) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-80-dpll = refl

random-80-wsat :
  maybe-eval-sat ((Var 1) ∧ (Var 3)) whole-sat
  ≡ just true
random-80-wsat = refl

random-81-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-81-dpll = refl

random-81-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-81-wsat = refl

random-82-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-82-dpll = refl

random-82-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-82-wsat = refl

random-83-dpll :
  maybe-eval-sat ((Var 3) ∧ ((Var 3) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-83-dpll = refl

random-83-wsat :
  maybe-eval-sat ((Var 3) ∧ ((Var 3) ∨ (Var 4))) whole-sat
  ≡ just true
random-83-wsat = refl

random-84-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-84-dpll = refl

random-84-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-84-wsat = refl

random-85-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ (Var 3)) ∧ ((Var 3) ∨ (Var 1))) whole-DPLL
  ≡ just true
random-85-dpll = refl

random-85-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ (Var 3)) ∧ ((Var 3) ∨ (Var 1))) whole-sat
  ≡ just true
random-85-wsat = refl

random-86-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-86-dpll = refl

random-86-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-86-wsat = refl

random-87-dpll :
  maybe-eval-sat ((((Var 1) => (Var 1)) => (Var 3)) => (((Var 4) => (Var 4)) => ((Var 1) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-87-dpll = refl

random-87-wsat :
  maybe-eval-sat ((((Var 1) => (Var 1)) => (Var 3)) => (((Var 4) => (Var 4)) => ((Var 1) ∧ (Var 3)))) whole-sat
  ≡ just true
random-87-wsat = refl

random-88-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∧ ((Var 2) => (Var 4))) => ((Var 3) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-88-dpll = refl

random-88-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∧ ((Var 2) => (Var 4))) => ((Var 3) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-88-wsat = refl

random-89-dpll :
  maybe-eval-sat ((¬ (Var 3)) ∧ ((¬ (Var 1)) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-89-dpll = refl

random-89-wsat :
  maybe-eval-sat ((¬ (Var 3)) ∧ ((¬ (Var 1)) ∨ (Var 4))) whole-sat
  ≡ just true
random-89-wsat = refl

random-90-dpll :
  maybe-eval-sat ((Var 1) ∨ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-90-dpll = refl

random-90-wsat :
  maybe-eval-sat ((Var 1) ∨ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-90-wsat = refl

random-91-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-91-dpll = refl

random-91-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-91-wsat = refl

random-92-dpll :
  maybe-eval-sat (((Var 1) => ((Var 4) => (Var 3))) ∧ (¬ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-92-dpll = refl

random-92-wsat :
  maybe-eval-sat (((Var 1) => ((Var 4) => (Var 3))) ∧ (¬ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-92-wsat = refl

random-93-dpll :
  maybe-eval-sat ((Var 3) ∨ (((Var 2) ∨ (Var 3)) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-93-dpll = refl

random-93-wsat :
  maybe-eval-sat ((Var 3) ∨ (((Var 2) ∨ (Var 3)) ∨ (Var 2))) whole-sat
  ≡ just true
random-93-wsat = refl

random-94-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∨ (Var 4)) ∧ (((Var 3) => (Var 3)) ∧ ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-94-dpll = refl

random-94-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∨ (Var 4)) ∧ (((Var 3) => (Var 3)) ∧ ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-94-wsat = refl

random-95-dpll :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 4)) ∨ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-95-dpll = refl

random-95-wsat :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 4)) ∨ ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-95-wsat = refl

random-96-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∧ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-96-dpll = refl

random-96-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∧ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-96-wsat = refl

random-97-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-97-dpll = refl

random-97-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-97-wsat = refl

random-98-dpll :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 1) => (Var 2)))) whole-DPLL
  ≡ nothing
random-98-dpll = refl

random-98-wsat :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 1) => (Var 2)))) whole-sat
  ≡ nothing
random-98-wsat = refl

random-99-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-99-dpll = refl

random-99-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-99-wsat = refl

random-100-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∨ (Var 1))) => (((Var 4) ∧ (Var 2)) => ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-100-dpll = refl

random-100-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∨ (Var 1))) => (((Var 4) ∧ (Var 2)) => ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-100-wsat = refl

random-101-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-101-dpll = refl

random-101-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-101-wsat = refl

random-102-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-102-dpll = refl

random-102-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-102-wsat = refl

random-103-dpll :
  maybe-eval-sat (((Var 4) ∧ ((Var 4) => (Var 4))) => (Var 3)) whole-DPLL
  ≡ just true
random-103-dpll = refl

random-103-wsat :
  maybe-eval-sat (((Var 4) ∧ ((Var 4) => (Var 4))) => (Var 3)) whole-sat
  ≡ just true
random-103-wsat = refl

random-104-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-104-dpll = refl

random-104-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-104-wsat = refl

random-105-dpll :
  maybe-eval-sat (¬ ((Var 4) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-105-dpll = refl

random-105-wsat :
  maybe-eval-sat (¬ ((Var 4) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-105-wsat = refl

random-106-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 1)) => (Var 2))) whole-DPLL
  ≡ nothing
random-106-dpll = refl

random-106-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 1)) => (Var 2))) whole-sat
  ≡ nothing
random-106-wsat = refl

random-107-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-107-dpll = refl

random-107-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-107-wsat = refl

random-108-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-108-dpll = refl

random-108-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-108-wsat = refl

random-109-dpll :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) => (Var 4)) => (Var 2))) whole-DPLL
  ≡ just true
random-109-dpll = refl

random-109-wsat :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) => (Var 4)) => (Var 2))) whole-sat
  ≡ just true
random-109-wsat = refl

random-110-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-110-dpll = refl

random-110-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-110-wsat = refl

random-111-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 2))) => (Var 4)) whole-DPLL
  ≡ just true
random-111-dpll = refl

random-111-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 2))) => (Var 4)) whole-sat
  ≡ just true
random-111-wsat = refl

random-112-dpll :
  maybe-eval-sat ((Var 3) ∧ (((Var 2) => (Var 3)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-112-dpll = refl

random-112-wsat :
  maybe-eval-sat ((Var 3) ∧ (((Var 2) => (Var 3)) ∧ (Var 2))) whole-sat
  ≡ just true
random-112-wsat = refl

random-113-dpll :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-113-dpll = refl

random-113-wsat :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-113-wsat = refl

random-114-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-114-dpll = refl

random-114-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-114-wsat = refl

random-115-dpll :
  maybe-eval-sat ((((Var 1) => (Var 3)) => (Var 2)) ∨ ((¬ (Var 2)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-115-dpll = refl

random-115-wsat :
  maybe-eval-sat ((((Var 1) => (Var 3)) => (Var 2)) ∨ ((¬ (Var 2)) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-115-wsat = refl

random-116-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-116-dpll = refl

random-116-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-116-wsat = refl

random-117-dpll :
  maybe-eval-sat (((Var 1) => ((Var 3) ∨ (Var 4))) ∧ (((Var 4) ∨ (Var 2)) => (Var 4))) whole-DPLL
  ≡ just true
random-117-dpll = refl

random-117-wsat :
  maybe-eval-sat (((Var 1) => ((Var 3) ∨ (Var 4))) ∧ (((Var 4) ∨ (Var 2)) => (Var 4))) whole-sat
  ≡ just true
random-117-wsat = refl

random-118-dpll :
  maybe-eval-sat ((Var 2) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-118-dpll = refl

random-118-wsat :
  maybe-eval-sat ((Var 2) ∧ (Var 2)) whole-sat
  ≡ just true
random-118-wsat = refl

random-119-dpll :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∨ ((Var 3) ∨ (Var 2)))) whole-DPLL
  ≡ nothing
random-119-dpll = refl

random-119-wsat :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∨ ((Var 3) ∨ (Var 2)))) whole-sat
  ≡ nothing
random-119-wsat = refl

random-120-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∨ ((Var 4) ∨ (Var 1))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-120-dpll = refl

random-120-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∨ ((Var 4) ∨ (Var 1))) ∨ (Var 4)) whole-sat
  ≡ just true
random-120-wsat = refl

random-121-dpll :
  maybe-eval-sat ((((Var 4) => (Var 4)) => (Var 3)) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-121-dpll = refl

random-121-wsat :
  maybe-eval-sat ((((Var 4) => (Var 4)) => (Var 3)) ∧ (Var 2)) whole-sat
  ≡ just true
random-121-wsat = refl

random-122-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-122-dpll = refl

random-122-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-122-wsat = refl

random-123-dpll :
  maybe-eval-sat ((¬ (Var 2)) ∧ ((¬ (Var 1)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-123-dpll = refl

random-123-wsat :
  maybe-eval-sat ((¬ (Var 2)) ∧ ((¬ (Var 1)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-123-wsat = refl

random-124-dpll :
  maybe-eval-sat ((Var 1) => (¬ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-124-dpll = refl

random-124-wsat :
  maybe-eval-sat ((Var 1) => (¬ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-124-wsat = refl

random-125-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-125-dpll = refl

random-125-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-125-wsat = refl

random-126-dpll :
  maybe-eval-sat ((Var 2) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-126-dpll = refl

random-126-wsat :
  maybe-eval-sat ((Var 2) ∧ (Var 2)) whole-sat
  ≡ just true
random-126-wsat = refl

random-127-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-127-dpll = refl

random-127-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-127-wsat = refl

random-128-dpll :
  maybe-eval-sat ((Var 2) ∨ ((Var 1) => ((Var 1) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-128-dpll = refl

random-128-wsat :
  maybe-eval-sat ((Var 2) ∨ ((Var 1) => ((Var 1) ∧ (Var 2)))) whole-sat
  ≡ just true
random-128-wsat = refl

random-129-dpll :
  maybe-eval-sat ((((Var 2) => (Var 1)) ∧ ((Var 3) ∧ (Var 4))) ∧ (((Var 2) => (Var 1)) ∨ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-129-dpll = refl

random-129-wsat :
  maybe-eval-sat ((((Var 2) => (Var 1)) ∧ ((Var 3) ∧ (Var 4))) ∧ (((Var 2) => (Var 1)) ∨ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-129-wsat = refl

random-130-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => (¬ (Var 1))) ∧ ((Var 1) ∧ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-130-dpll = refl

random-130-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => (¬ (Var 1))) ∧ ((Var 1) ∧ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-130-wsat = refl

random-131-dpll :
  maybe-eval-sat ((¬ (¬ (Var 4))) ∨ (((Var 1) ∨ (Var 3)) => ((Var 1) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-131-dpll = refl

random-131-wsat :
  maybe-eval-sat ((¬ (¬ (Var 4))) ∨ (((Var 1) ∨ (Var 3)) => ((Var 1) ∧ (Var 3)))) whole-sat
  ≡ just true
random-131-wsat = refl

random-132-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∨ ((Var 3) ∨ (Var 4))) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-132-dpll = refl

random-132-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∨ ((Var 3) ∨ (Var 4))) ∧ (Var 1)) whole-sat
  ≡ just true
random-132-wsat = refl

random-133-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) ∧ (¬ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-133-dpll = refl

random-133-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) ∧ (¬ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-133-wsat = refl

random-134-dpll :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 1))) ∧ (((Var 3) ∧ (Var 1)) ∧ ((Var 1) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-134-dpll = refl

random-134-wsat :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 1))) ∧ (((Var 3) ∧ (Var 1)) ∧ ((Var 1) ∧ (Var 3)))) whole-sat
  ≡ just true
random-134-wsat = refl

random-135-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 3)) => ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-135-dpll = refl

random-135-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 3)) => ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-135-wsat = refl

random-136-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-136-dpll = refl

random-136-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-136-wsat = refl

random-137-dpll :
  maybe-eval-sat (((Var 2) ∨ ((Var 2) ∨ (Var 3))) => (((Var 2) ∧ (Var 2)) ∨ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-137-dpll = refl

random-137-wsat :
  maybe-eval-sat (((Var 2) ∨ ((Var 2) ∨ (Var 3))) => (((Var 2) ∧ (Var 2)) ∨ (¬ (Var 4)))) whole-sat
  ≡ just true
random-137-wsat = refl

random-138-dpll :
  maybe-eval-sat (((Var 2) => ((Var 1) => (Var 4))) ∧ (((Var 1) ∨ (Var 4)) ∨ ((Var 1) => (Var 1)))) whole-DPLL
  ≡ just true
random-138-dpll = refl

random-138-wsat :
  maybe-eval-sat (((Var 2) => ((Var 1) => (Var 4))) ∧ (((Var 1) ∨ (Var 4)) ∨ ((Var 1) => (Var 1)))) whole-sat
  ≡ just true
random-138-wsat = refl

random-139-dpll :
  maybe-eval-sat (¬ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-139-dpll = refl

random-139-wsat :
  maybe-eval-sat (¬ (¬ (Var 2))) whole-sat
  ≡ just true
random-139-wsat = refl

random-140-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-140-dpll = refl

random-140-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-140-wsat = refl

random-141-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-141-dpll = refl

random-141-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-141-wsat = refl

random-142-dpll :
  maybe-eval-sat (¬ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-142-dpll = refl

random-142-wsat :
  maybe-eval-sat (¬ (¬ (Var 2))) whole-sat
  ≡ just true
random-142-wsat = refl

random-143-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) => ((Var 2) ∧ (Var 4))) => (¬ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-143-dpll = refl

random-143-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) => ((Var 2) ∧ (Var 4))) => (¬ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-143-wsat = refl

random-144-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-144-dpll = refl

random-144-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-144-wsat = refl

random-145-dpll :
  maybe-eval-sat (((Var 1) => ((Var 3) ∧ (Var 3))) => (((Var 2) ∧ (Var 2)) ∨ ((Var 1) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-145-dpll = refl

random-145-wsat :
  maybe-eval-sat (((Var 1) => ((Var 3) ∧ (Var 3))) => (((Var 2) ∧ (Var 2)) ∨ ((Var 1) ∧ (Var 3)))) whole-sat
  ≡ just true
random-145-wsat = refl

random-146-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-146-dpll = refl

random-146-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-146-wsat = refl

random-147-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) => (¬ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-147-dpll = refl

random-147-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) => (¬ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-147-wsat = refl

random-148-dpll :
  maybe-eval-sat (¬ ((¬ (Var 3)) => (Var 1))) whole-DPLL
  ≡ just true
random-148-dpll = refl

random-148-wsat :
  maybe-eval-sat (¬ ((¬ (Var 3)) => (Var 1))) whole-sat
  ≡ just true
random-148-wsat = refl

random-149-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) => (¬ (Var 4))) => (¬ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-149-dpll = refl

random-149-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) => (¬ (Var 4))) => (¬ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-149-wsat = refl

random-150-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) => (¬ (Var 3))) ∨ (((Var 2) ∧ (Var 4)) ∧ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-150-dpll = refl

random-150-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) => (¬ (Var 3))) ∨ (((Var 2) ∧ (Var 4)) ∧ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-150-wsat = refl

random-151-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) ∧ (((Var 3) => (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-151-dpll = refl

random-151-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) ∧ (((Var 3) => (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-151-wsat = refl

random-152-dpll :
  maybe-eval-sat (((Var 4) => (Var 2)) => ((Var 2) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-152-dpll = refl

random-152-wsat :
  maybe-eval-sat (((Var 4) => (Var 2)) => ((Var 2) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-152-wsat = refl

random-153-dpll :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∨ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-153-dpll = refl

random-153-wsat :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∨ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-153-wsat = refl

random-154-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 3)) => (¬ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-154-dpll = refl

random-154-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 3)) => (¬ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-154-wsat = refl

random-155-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∧ (Var 1))) ∨ (((Var 1) ∨ (Var 3)) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-155-dpll = refl

random-155-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∧ (Var 1))) ∨ (((Var 1) ∨ (Var 3)) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-155-wsat = refl

random-156-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-156-dpll = refl

random-156-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-156-wsat = refl

random-157-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 2))) => (((Var 1) ∨ (Var 3)) ∨ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-157-dpll = refl

random-157-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 2))) => (((Var 1) ∨ (Var 3)) ∨ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-157-wsat = refl

random-158-dpll :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 2) => (Var 2)))) whole-DPLL
  ≡ just true
random-158-dpll = refl

random-158-wsat :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 2) => (Var 2)))) whole-sat
  ≡ just true
random-158-wsat = refl

random-159-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-159-dpll = refl

random-159-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-159-wsat = refl

random-160-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-160-dpll = refl

random-160-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-160-wsat = refl

random-161-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-161-dpll = refl

random-161-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-161-wsat = refl

random-162-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-162-dpll = refl

random-162-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-162-wsat = refl

random-163-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) ∨ ((Var 2) ∧ (Var 3))) => (((Var 2) ∨ (Var 1)) ∧ ((Var 1) => (Var 1)))) whole-DPLL
  ≡ just true
random-163-dpll = refl

random-163-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) ∨ ((Var 2) ∧ (Var 3))) => (((Var 2) ∨ (Var 1)) ∧ ((Var 1) => (Var 1)))) whole-sat
  ≡ just true
random-163-wsat = refl

random-164-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => (¬ (Var 1))) => (((Var 2) ∨ (Var 4)) ∨ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-164-dpll = refl

random-164-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => (¬ (Var 1))) => (((Var 2) ∨ (Var 4)) ∨ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-164-wsat = refl

random-165-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ (¬ (Var 3))) ∨ ((Var 4) => (Var 2))) whole-DPLL
  ≡ just true
random-165-dpll = refl

random-165-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ (¬ (Var 3))) ∨ ((Var 4) => (Var 2))) whole-sat
  ≡ just true
random-165-wsat = refl

random-166-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 2)) => ((Var 2) ∨ (Var 1))) => (((Var 2) ∧ (Var 4)) ∧ ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-166-dpll = refl

random-166-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 2)) => ((Var 2) ∨ (Var 1))) => (((Var 2) ∧ (Var 4)) ∧ ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-166-wsat = refl

random-167-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-167-dpll = refl

random-167-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) ∧ (Var 1))) whole-sat
  ≡ just true
random-167-wsat = refl

random-168-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-168-dpll = refl

random-168-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-168-wsat = refl

random-169-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) ∨ (Var 1)) ∧ ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-169-dpll = refl

random-169-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) ∨ (Var 1)) ∧ ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-169-wsat = refl

random-170-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-170-dpll = refl

random-170-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-170-wsat = refl

random-171-dpll :
  maybe-eval-sat (((Var 2) ∨ (Var 4)) ∨ (((Var 4) ∨ (Var 3)) ∨ ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-171-dpll = refl

random-171-wsat :
  maybe-eval-sat (((Var 2) ∨ (Var 4)) ∨ (((Var 4) ∨ (Var 3)) ∨ ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-171-wsat = refl

random-172-dpll :
  maybe-eval-sat ((((Var 1) => (Var 1)) ∧ ((Var 1) => (Var 4))) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-172-dpll = refl

random-172-wsat :
  maybe-eval-sat ((((Var 1) => (Var 1)) ∧ ((Var 1) => (Var 4))) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-172-wsat = refl

random-173-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 3) ∧ (Var 2)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-173-dpll = refl

random-173-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 3) ∧ (Var 2)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-173-wsat = refl

random-174-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-174-dpll = refl

random-174-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-174-wsat = refl

random-175-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-175-dpll = refl

random-175-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-175-wsat = refl

random-176-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∨ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-176-dpll = refl

random-176-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∨ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-176-wsat = refl

random-177-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∨ (Var 4)) ∧ ((¬ (Var 2)) ∨ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-177-dpll = refl

random-177-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∨ (Var 4)) ∧ ((¬ (Var 2)) ∨ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-177-wsat = refl

random-178-dpll :
  maybe-eval-sat ((Var 1) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-178-dpll = refl

random-178-wsat :
  maybe-eval-sat ((Var 1) ∧ (Var 2)) whole-sat
  ≡ just true
random-178-wsat = refl

random-179-dpll :
  maybe-eval-sat ((((Var 3) => (Var 2)) => ((Var 3) ∧ (Var 3))) => (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-179-dpll = refl

random-179-wsat :
  maybe-eval-sat ((((Var 3) => (Var 2)) => ((Var 3) ∧ (Var 3))) => (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-179-wsat = refl

random-180-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 2)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-180-dpll = refl

random-180-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 2)) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-180-wsat = refl

random-181-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-181-dpll = refl

random-181-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-181-wsat = refl

random-182-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-182-dpll = refl

random-182-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-182-wsat = refl

random-183-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) => (Var 3)) => (((Var 2) => (Var 3)) => (Var 3))) whole-DPLL
  ≡ just true
random-183-dpll = refl

random-183-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) => (Var 3)) => (((Var 2) => (Var 3)) => (Var 3))) whole-sat
  ≡ just true
random-183-wsat = refl

random-184-dpll :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ (Var 2)) ∧ ((¬ (Var 2)) ∧ ((Var 4) => (Var 4)))) whole-DPLL
  ≡ just true
random-184-dpll = refl

random-184-wsat :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ (Var 2)) ∧ ((¬ (Var 2)) ∧ ((Var 4) => (Var 4)))) whole-sat
  ≡ just true
random-184-wsat = refl

random-185-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-185-dpll = refl

random-185-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-185-wsat = refl

random-186-dpll :
  maybe-eval-sat (((Var 3) => ((Var 1) => (Var 3))) => (((Var 3) ∧ (Var 4)) ∧ (¬ (Var 3)))) whole-DPLL
  ≡ nothing
random-186-dpll = refl

random-186-wsat :
  maybe-eval-sat (((Var 3) => ((Var 1) => (Var 3))) => (((Var 3) ∧ (Var 4)) ∧ (¬ (Var 3)))) whole-sat
  ≡ nothing
random-186-wsat = refl

random-187-dpll :
  maybe-eval-sat ((¬ ((Var 4) => (Var 2))) ∨ (((Var 3) ∧ (Var 4)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-187-dpll = refl

random-187-wsat :
  maybe-eval-sat ((¬ ((Var 4) => (Var 2))) ∨ (((Var 3) ∧ (Var 4)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-187-wsat = refl

random-188-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 2))) ∨ (¬ (Var 3))) whole-DPLL
  ≡ just true
random-188-dpll = refl

random-188-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 2))) ∨ (¬ (Var 3))) whole-sat
  ≡ just true
random-188-wsat = refl

random-189-dpll :
  maybe-eval-sat ((((Var 1) => (Var 4)) => ((Var 2) => (Var 4))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-189-dpll = refl

random-189-wsat :
  maybe-eval-sat ((((Var 1) => (Var 4)) => ((Var 2) => (Var 4))) ∨ (Var 3)) whole-sat
  ≡ just true
random-189-wsat = refl

random-190-dpll :
  maybe-eval-sat (((Var 1) ∧ ((Var 4) => (Var 1))) ∨ (¬ ((Var 2) => (Var 1)))) whole-DPLL
  ≡ just true
random-190-dpll = refl

random-190-wsat :
  maybe-eval-sat (((Var 1) ∧ ((Var 4) => (Var 1))) ∨ (¬ ((Var 2) => (Var 1)))) whole-sat
  ≡ just true
random-190-wsat = refl

random-191-dpll :
  maybe-eval-sat ((¬ (Var 1)) ∨ (¬ (Var 4))) whole-DPLL
  ≡ just true
random-191-dpll = refl

random-191-wsat :
  maybe-eval-sat ((¬ (Var 1)) ∨ (¬ (Var 4))) whole-sat
  ≡ just true
random-191-wsat = refl

random-192-dpll :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ nothing
random-192-dpll = refl

random-192-wsat :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ nothing
random-192-wsat = refl

random-193-dpll :
  maybe-eval-sat ((Var 3) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-193-dpll = refl

random-193-wsat :
  maybe-eval-sat ((Var 3) ∨ (Var 3)) whole-sat
  ≡ just true
random-193-wsat = refl

random-194-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-194-dpll = refl

random-194-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-194-wsat = refl

random-195-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-195-dpll = refl

random-195-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-195-wsat = refl

random-196-dpll :
  maybe-eval-sat ((((Var 1) => (Var 3)) => (Var 1)) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-196-dpll = refl

random-196-wsat :
  maybe-eval-sat ((((Var 1) => (Var 3)) => (Var 1)) ∨ (Var 2)) whole-sat
  ≡ just true
random-196-wsat = refl

random-197-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-197-dpll = refl

random-197-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-197-wsat = refl

random-198-dpll :
  maybe-eval-sat ((Var 3) => (¬ (Var 2))) whole-DPLL
  ≡ just true
random-198-dpll = refl

random-198-wsat :
  maybe-eval-sat ((Var 3) => (¬ (Var 2))) whole-sat
  ≡ just true
random-198-wsat = refl

random-199-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-199-dpll = refl

random-199-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-199-wsat = refl

random-200-dpll :
  maybe-eval-sat ((Var 3) ∧ (¬ ((Var 3) => (Var 3)))) whole-DPLL
  ≡ nothing
random-200-dpll = refl

random-200-wsat :
  maybe-eval-sat ((Var 3) ∧ (¬ ((Var 3) => (Var 3)))) whole-sat
  ≡ nothing
random-200-wsat = refl

random-201-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-201-dpll = refl

random-201-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-201-wsat = refl

random-202-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 1) ∧ (Var 4))) => ((Var 2) ∨ ((Var 4) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-202-dpll = refl

random-202-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 1) ∧ (Var 4))) => ((Var 2) ∨ ((Var 4) ∨ (Var 2)))) whole-sat
  ≡ just true
random-202-wsat = refl

random-203-dpll :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∧ ((Var 3) => (Var 1))) => (¬ ((Var 1) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-203-dpll = refl

random-203-wsat :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∧ ((Var 3) => (Var 1))) => (¬ ((Var 1) ∧ (Var 1)))) whole-sat
  ≡ just true
random-203-wsat = refl

random-204-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-204-dpll = refl

random-204-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-204-wsat = refl

random-205-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-205-dpll = refl

random-205-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-205-wsat = refl

random-206-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-206-dpll = refl

random-206-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-206-wsat = refl

random-207-dpll :
  maybe-eval-sat ((((Var 1) => (Var 1)) ∧ ((Var 1) ∨ (Var 3))) ∧ ((Var 4) => (Var 3))) whole-DPLL
  ≡ just true
random-207-dpll = refl

random-207-wsat :
  maybe-eval-sat ((((Var 1) => (Var 1)) ∧ ((Var 1) ∨ (Var 3))) ∧ ((Var 4) => (Var 3))) whole-sat
  ≡ just true
random-207-wsat = refl

random-208-dpll :
  maybe-eval-sat ((((Var 3) => (Var 1)) ∨ ((Var 3) ∧ (Var 1))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-208-dpll = refl

random-208-wsat :
  maybe-eval-sat ((((Var 3) => (Var 1)) ∨ ((Var 3) ∧ (Var 1))) ∨ (Var 4)) whole-sat
  ≡ just true
random-208-wsat = refl

random-209-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-209-dpll = refl

random-209-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-209-wsat = refl

random-210-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-210-dpll = refl

random-210-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-210-wsat = refl

random-211-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) ∧ ((Var 2) ∧ (Var 3))) ∧ ((Var 2) ∨ ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-211-dpll = refl

random-211-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) ∧ ((Var 2) ∧ (Var 3))) ∧ ((Var 2) ∨ ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-211-wsat = refl

random-212-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => ((Var 3) ∧ (Var 3))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-212-dpll = refl

random-212-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => ((Var 3) ∧ (Var 3))) ∨ (Var 2)) whole-sat
  ≡ just true
random-212-wsat = refl

random-213-dpll :
  maybe-eval-sat ((Var 2) => ((Var 4) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-213-dpll = refl

random-213-wsat :
  maybe-eval-sat ((Var 2) => ((Var 4) ∧ (Var 3))) whole-sat
  ≡ just true
random-213-wsat = refl

random-214-dpll :
  maybe-eval-sat ((¬ (Var 2)) => (Var 3)) whole-DPLL
  ≡ just true
random-214-dpll = refl

random-214-wsat :
  maybe-eval-sat ((¬ (Var 2)) => (Var 3)) whole-sat
  ≡ just true
random-214-wsat = refl

random-215-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-215-dpll = refl

random-215-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-215-wsat = refl

random-216-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 3)) => (Var 3)) whole-DPLL
  ≡ just true
random-216-dpll = refl

random-216-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 3)) => (Var 3)) whole-sat
  ≡ just true
random-216-wsat = refl

random-217-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-217-dpll = refl

random-217-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-217-wsat = refl

random-218-dpll :
  maybe-eval-sat ((Var 2) => (((Var 3) ∨ (Var 3)) => ((Var 3) => (Var 1)))) whole-DPLL
  ≡ just true
random-218-dpll = refl

random-218-wsat :
  maybe-eval-sat ((Var 2) => (((Var 3) ∨ (Var 3)) => ((Var 3) => (Var 1)))) whole-sat
  ≡ just true
random-218-wsat = refl

random-219-dpll :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-219-dpll = refl

random-219-wsat :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-219-wsat = refl

random-220-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-220-dpll = refl

random-220-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-220-wsat = refl

random-221-dpll :
  maybe-eval-sat (¬ ((Var 3) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-221-dpll = refl

random-221-wsat :
  maybe-eval-sat (¬ ((Var 3) ∨ (Var 3))) whole-sat
  ≡ just true
random-221-wsat = refl

random-222-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => ((Var 4) => (Var 2))) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-222-dpll = refl

random-222-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => ((Var 4) => (Var 2))) ∧ (Var 3)) whole-sat
  ≡ just true
random-222-wsat = refl

random-223-dpll :
  maybe-eval-sat ((Var 2) => (((Var 2) ∧ (Var 2)) ∧ ((Var 2) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-223-dpll = refl

random-223-wsat :
  maybe-eval-sat ((Var 2) => (((Var 2) ∧ (Var 2)) ∧ ((Var 2) ∨ (Var 4)))) whole-sat
  ≡ just true
random-223-wsat = refl

random-224-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-224-dpll = refl

random-224-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-224-wsat = refl

random-225-dpll :
  maybe-eval-sat ((Var 4) => (¬ (Var 2))) whole-DPLL
  ≡ just true
random-225-dpll = refl

random-225-wsat :
  maybe-eval-sat ((Var 4) => (¬ (Var 2))) whole-sat
  ≡ just true
random-225-wsat = refl

random-226-dpll :
  maybe-eval-sat ((¬ (Var 2)) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-226-dpll = refl

random-226-wsat :
  maybe-eval-sat ((¬ (Var 2)) ∧ (Var 1)) whole-sat
  ≡ just true
random-226-wsat = refl

random-227-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-227-dpll = refl

random-227-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-227-wsat = refl

random-228-dpll :
  maybe-eval-sat (((Var 4) ∧ (¬ (Var 2))) => (Var 2)) whole-DPLL
  ≡ just true
random-228-dpll = refl

random-228-wsat :
  maybe-eval-sat (((Var 4) ∧ (¬ (Var 2))) => (Var 2)) whole-sat
  ≡ just true
random-228-wsat = refl

random-229-dpll :
  maybe-eval-sat ((¬ ((Var 4) => (Var 2))) ∨ (((Var 3) ∨ (Var 2)) ∨ ((Var 2) => (Var 1)))) whole-DPLL
  ≡ just true
random-229-dpll = refl

random-229-wsat :
  maybe-eval-sat ((¬ ((Var 4) => (Var 2))) ∨ (((Var 3) ∨ (Var 2)) ∨ ((Var 2) => (Var 1)))) whole-sat
  ≡ just true
random-229-wsat = refl

random-230-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 4)) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-230-dpll = refl

random-230-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 4)) ∨ (Var 1)) whole-sat
  ≡ just true
random-230-wsat = refl

random-231-dpll :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 2)) => (Var 1))) whole-DPLL
  ≡ just true
random-231-dpll = refl

random-231-wsat :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 2)) => (Var 1))) whole-sat
  ≡ just true
random-231-wsat = refl

random-232-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 4) ∨ (Var 4))) ∨ ((Var 3) => ((Var 4) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-232-dpll = refl

random-232-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 4) ∨ (Var 4))) ∨ ((Var 3) => ((Var 4) ∨ (Var 2)))) whole-sat
  ≡ just true
random-232-wsat = refl

random-233-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-233-dpll = refl

random-233-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-233-wsat = refl

random-234-dpll :
  maybe-eval-sat ((Var 4) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-234-dpll = refl

random-234-wsat :
  maybe-eval-sat ((Var 4) ∨ (Var 3)) whole-sat
  ≡ just true
random-234-wsat = refl

random-235-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∨ ((Var 1) => (Var 2))) => (Var 1)) whole-DPLL
  ≡ just true
random-235-dpll = refl

random-235-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∨ ((Var 1) => (Var 2))) => (Var 1)) whole-sat
  ≡ just true
random-235-wsat = refl

random-236-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-236-dpll = refl

random-236-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-236-wsat = refl

random-237-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-237-dpll = refl

random-237-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-237-wsat = refl

random-238-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-238-dpll = refl

random-238-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-238-wsat = refl

random-239-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-239-dpll = refl

random-239-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-239-wsat = refl

random-240-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-240-dpll = refl

random-240-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-240-wsat = refl

random-241-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-241-dpll = refl

random-241-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-241-wsat = refl

random-242-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) ∧ (((Var 1) ∧ (Var 3)) => (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-242-dpll = refl

random-242-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) ∧ (((Var 1) ∧ (Var 3)) => (¬ (Var 3)))) whole-sat
  ≡ just true
random-242-wsat = refl

random-243-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-243-dpll = refl

random-243-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-243-wsat = refl

random-244-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-244-dpll = refl

random-244-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-244-wsat = refl

random-245-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 3)) ∨ ((Var 2) => (Var 2)))) whole-DPLL
  ≡ nothing
random-245-dpll = refl

random-245-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 3)) ∨ ((Var 2) => (Var 2)))) whole-sat
  ≡ nothing
random-245-wsat = refl

random-246-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-246-dpll = refl

random-246-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-246-wsat = refl

random-247-dpll :
  maybe-eval-sat (¬ (((Var 4) => (Var 2)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-247-dpll = refl

random-247-wsat :
  maybe-eval-sat (¬ (((Var 4) => (Var 2)) ∨ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-247-wsat = refl

random-248-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 3)) ∨ (Var 1)) => (Var 1)) whole-DPLL
  ≡ just true
random-248-dpll = refl

random-248-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 3)) ∨ (Var 1)) => (Var 1)) whole-sat
  ≡ just true
random-248-wsat = refl

random-249-dpll :
  maybe-eval-sat ((Var 4) ∧ (¬ ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-249-dpll = refl

random-249-wsat :
  maybe-eval-sat ((Var 4) ∧ (¬ ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-249-wsat = refl

random-250-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 1)) => (¬ (Var 2))) => ((Var 1) ∨ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-250-dpll = refl

random-250-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 1)) => (¬ (Var 2))) => ((Var 1) ∨ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-250-wsat = refl

random-251-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∨ ((Var 4) ∧ (Var 4))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-251-dpll = refl

random-251-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∨ ((Var 4) ∧ (Var 4))) ∧ (Var 2)) whole-sat
  ≡ just true
random-251-wsat = refl

random-252-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∨ (Var 4)) ∨ (((Var 3) ∨ (Var 4)) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-252-dpll = refl

random-252-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∨ (Var 4)) ∨ (((Var 3) ∨ (Var 4)) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-252-wsat = refl

random-253-dpll :
  maybe-eval-sat (((Var 2) ∨ ((Var 3) ∧ (Var 1))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-253-dpll = refl

random-253-wsat :
  maybe-eval-sat (((Var 2) ∨ ((Var 3) ∧ (Var 1))) ∧ (Var 2)) whole-sat
  ≡ just true
random-253-wsat = refl

random-254-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-254-dpll = refl

random-254-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-254-wsat = refl

random-255-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-255-dpll = refl

random-255-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-255-wsat = refl

random-256-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-256-dpll = refl

random-256-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-256-wsat = refl

random-257-dpll :
  maybe-eval-sat ((((Var 4) => (Var 2)) => ((Var 4) => (Var 4))) => (((Var 3) ∨ (Var 2)) => (Var 1))) whole-DPLL
  ≡ just true
random-257-dpll = refl

random-257-wsat :
  maybe-eval-sat ((((Var 4) => (Var 2)) => ((Var 4) => (Var 4))) => (((Var 3) ∨ (Var 2)) => (Var 1))) whole-sat
  ≡ just true
random-257-wsat = refl

random-258-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-258-dpll = refl

random-258-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-258-wsat = refl

random-259-dpll :
  maybe-eval-sat ((Var 3) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-259-dpll = refl

random-259-wsat :
  maybe-eval-sat ((Var 3) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-259-wsat = refl

random-260-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-260-dpll = refl

random-260-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-260-wsat = refl

random-261-dpll :
  maybe-eval-sat ((Var 1) ∨ (((Var 1) ∧ (Var 2)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-261-dpll = refl

random-261-wsat :
  maybe-eval-sat ((Var 1) ∨ (((Var 1) ∧ (Var 2)) ∧ (Var 1))) whole-sat
  ≡ just true
random-261-wsat = refl

random-262-dpll :
  maybe-eval-sat (((¬ (Var 4)) => ((Var 2) ∧ (Var 3))) ∧ (((Var 1) => (Var 4)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-262-dpll = refl

random-262-wsat :
  maybe-eval-sat (((¬ (Var 4)) => ((Var 2) ∧ (Var 3))) ∧ (((Var 1) => (Var 4)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-262-wsat = refl

random-263-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∨ ((Var 2) ∧ (Var 4))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-263-dpll = refl

random-263-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∨ ((Var 2) ∧ (Var 4))) ∨ (Var 2)) whole-sat
  ≡ just true
random-263-wsat = refl

random-264-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-264-dpll = refl

random-264-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 4))) whole-sat
  ≡ just true
random-264-wsat = refl

random-265-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-265-dpll = refl

random-265-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-265-wsat = refl

random-266-dpll :
  maybe-eval-sat ((((Var 2) => (Var 1)) ∧ (Var 1)) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-266-dpll = refl

random-266-wsat :
  maybe-eval-sat ((((Var 2) => (Var 1)) ∧ (Var 1)) ∧ (Var 4)) whole-sat
  ≡ just true
random-266-wsat = refl

random-267-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-267-dpll = refl

random-267-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-267-wsat = refl

random-268-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-268-dpll = refl

random-268-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-268-wsat = refl

random-269-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-269-dpll = refl

random-269-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-269-wsat = refl

random-270-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 1)) ∨ (((Var 1) => (Var 3)) ∧ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-270-dpll = refl

random-270-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 1)) ∨ (((Var 1) => (Var 3)) ∧ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-270-wsat = refl

random-271-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-271-dpll = refl

random-271-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-271-wsat = refl

random-272-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 2))) => (((Var 1) => (Var 1)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-272-dpll = refl

random-272-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 2))) => (((Var 1) => (Var 1)) ∧ (Var 2))) whole-sat
  ≡ just true
random-272-wsat = refl

random-273-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-273-dpll = refl

random-273-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-273-wsat = refl

random-274-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-274-dpll = refl

random-274-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-274-wsat = refl

random-275-dpll :
  maybe-eval-sat ((Var 2) ∧ (((Var 3) ∨ (Var 3)) ∨ ((Var 3) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-275-dpll = refl

random-275-wsat :
  maybe-eval-sat ((Var 2) ∧ (((Var 3) ∨ (Var 3)) ∨ ((Var 3) ∧ (Var 4)))) whole-sat
  ≡ just true
random-275-wsat = refl

random-276-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-276-dpll = refl

random-276-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-276-wsat = refl

random-277-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) => ((¬ (Var 2)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-277-dpll = refl

random-277-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) => ((¬ (Var 2)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-277-wsat = refl

random-278-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-278-dpll = refl

random-278-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-278-wsat = refl

random-279-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-279-dpll = refl

random-279-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-279-wsat = refl

random-280-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-280-dpll = refl

random-280-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-280-wsat = refl

random-281-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) => ((Var 4) ∨ (Var 3))) ∨ (((Var 2) ∧ (Var 4)) ∧ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-281-dpll = refl

random-281-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) => ((Var 4) ∨ (Var 3))) ∨ (((Var 2) ∧ (Var 4)) ∧ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-281-wsat = refl

random-282-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-282-dpll = refl

random-282-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-282-wsat = refl

random-283-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-283-dpll = refl

random-283-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-283-wsat = refl

random-284-dpll :
  maybe-eval-sat ((Var 4) => (Var 3)) whole-DPLL
  ≡ just true
random-284-dpll = refl

random-284-wsat :
  maybe-eval-sat ((Var 4) => (Var 3)) whole-sat
  ≡ just true
random-284-wsat = refl

random-285-dpll :
  maybe-eval-sat ((Var 1) => ((Var 2) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-285-dpll = refl

random-285-wsat :
  maybe-eval-sat ((Var 1) => ((Var 2) ∨ (Var 2))) whole-sat
  ≡ just true
random-285-wsat = refl

random-286-dpll :
  maybe-eval-sat (((Var 4) ∨ (Var 4)) => (((Var 2) ∧ (Var 4)) ∨ ((Var 1) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-286-dpll = refl

random-286-wsat :
  maybe-eval-sat (((Var 4) ∨ (Var 4)) => (((Var 2) ∧ (Var 4)) ∨ ((Var 1) ∧ (Var 2)))) whole-sat
  ≡ just true
random-286-wsat = refl

random-287-dpll :
  maybe-eval-sat (((Var 1) => ((Var 3) ∧ (Var 3))) => (((Var 4) ∨ (Var 3)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-287-dpll = refl

random-287-wsat :
  maybe-eval-sat (((Var 1) => ((Var 3) ∧ (Var 3))) => (((Var 4) ∨ (Var 3)) ∧ (Var 4))) whole-sat
  ≡ just true
random-287-wsat = refl

random-288-dpll :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-288-dpll = refl

random-288-wsat :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-288-wsat = refl

random-289-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) ∧ ((Var 2) => (Var 1))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-289-dpll = refl

random-289-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) ∧ ((Var 2) => (Var 1))) ∨ (Var 2)) whole-sat
  ≡ just true
random-289-wsat = refl

random-290-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => (Var 2)) ∨ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-290-dpll = refl

random-290-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => (Var 2)) ∨ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-290-wsat = refl

random-291-dpll :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-291-dpll = refl

random-291-wsat :
  maybe-eval-sat (¬ ((Var 3) => ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-291-wsat = refl

random-292-dpll :
  maybe-eval-sat (((Var 4) ∧ (Var 4)) ∧ (¬ (Var 4))) whole-DPLL
  ≡ nothing
random-292-dpll = refl

random-292-wsat :
  maybe-eval-sat (((Var 4) ∧ (Var 4)) ∧ (¬ (Var 4))) whole-sat
  ≡ nothing
random-292-wsat = refl

random-293-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∧ ((Var 2) ∨ (Var 3))) => ((Var 1) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-293-dpll = refl

random-293-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∧ ((Var 2) ∨ (Var 3))) => ((Var 1) ∧ (Var 1))) whole-sat
  ≡ just true
random-293-wsat = refl

random-294-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) => (Var 1)) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-294-dpll = refl

random-294-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 2)) => (Var 1)) ∧ (Var 2)) whole-sat
  ≡ just true
random-294-wsat = refl

random-295-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) ∧ (Var 4)) ∧ ((¬ (Var 4)) => ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-295-dpll = refl

random-295-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) ∧ (Var 4)) ∧ ((¬ (Var 4)) => ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-295-wsat = refl

random-296-dpll :
  maybe-eval-sat (¬ (¬ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-296-dpll = refl

random-296-wsat :
  maybe-eval-sat (¬ (¬ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-296-wsat = refl

random-297-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-297-dpll = refl

random-297-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-297-wsat = refl

random-298-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-298-dpll = refl

random-298-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-298-wsat = refl

random-299-dpll :
  maybe-eval-sat ((Var 4) => ((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-299-dpll = refl

random-299-wsat :
  maybe-eval-sat ((Var 4) => ((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-299-wsat = refl

random-300-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-300-dpll = refl

random-300-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-300-wsat = refl

random-301-dpll :
  maybe-eval-sat ((¬ ((Var 4) => (Var 4))) ∨ (((Var 2) => (Var 1)) ∨ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-301-dpll = refl

random-301-wsat :
  maybe-eval-sat ((¬ ((Var 4) => (Var 4))) ∨ (((Var 2) => (Var 1)) ∨ (¬ (Var 4)))) whole-sat
  ≡ just true
random-301-wsat = refl

random-302-dpll :
  maybe-eval-sat ((((Var 4) => (Var 3)) ∨ (Var 4)) => (Var 1)) whole-DPLL
  ≡ just true
random-302-dpll = refl

random-302-wsat :
  maybe-eval-sat ((((Var 4) => (Var 3)) ∨ (Var 4)) => (Var 1)) whole-sat
  ≡ just true
random-302-wsat = refl

random-303-dpll :
  maybe-eval-sat (¬ (((Var 4) => (Var 4)) => ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-303-dpll = refl

random-303-wsat :
  maybe-eval-sat (¬ (((Var 4) => (Var 4)) => ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-303-wsat = refl

random-304-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-304-dpll = refl

random-304-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-304-wsat = refl

random-305-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-305-dpll = refl

random-305-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-305-wsat = refl

random-306-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-306-dpll = refl

random-306-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-306-wsat = refl

random-307-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∨ (Var 3)) => (Var 4)) whole-DPLL
  ≡ just true
random-307-dpll = refl

random-307-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∨ (Var 3)) => (Var 4)) whole-sat
  ≡ just true
random-307-wsat = refl

random-308-dpll :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 4)) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-308-dpll = refl

random-308-wsat :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 4)) ∨ (Var 4))) whole-sat
  ≡ just true
random-308-wsat = refl

random-309-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) => (¬ ((Var 3) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-309-dpll = refl

random-309-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) => (¬ ((Var 3) ∨ (Var 2)))) whole-sat
  ≡ just true
random-309-wsat = refl

random-310-dpll :
  maybe-eval-sat ((Var 4) => (((Var 1) ∧ (Var 4)) => (Var 3))) whole-DPLL
  ≡ just true
random-310-dpll = refl

random-310-wsat :
  maybe-eval-sat ((Var 4) => (((Var 1) ∧ (Var 4)) => (Var 3))) whole-sat
  ≡ just true
random-310-wsat = refl

random-311-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-311-dpll = refl

random-311-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-311-wsat = refl

random-312-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-312-dpll = refl

random-312-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-312-wsat = refl

random-313-dpll :
  maybe-eval-sat (¬ (Var 2)) whole-DPLL
  ≡ just true
random-313-dpll = refl

random-313-wsat :
  maybe-eval-sat (¬ (Var 2)) whole-sat
  ≡ just true
random-313-wsat = refl

random-314-dpll :
  maybe-eval-sat ((Var 3) => (Var 2)) whole-DPLL
  ≡ just true
random-314-dpll = refl

random-314-wsat :
  maybe-eval-sat ((Var 3) => (Var 2)) whole-sat
  ≡ just true
random-314-wsat = refl

random-315-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 4))) ∨ (((Var 1) ∧ (Var 3)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-315-dpll = refl

random-315-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 4))) ∨ (((Var 1) ∧ (Var 3)) ∧ (Var 4))) whole-sat
  ≡ just true
random-315-wsat = refl

random-316-dpll :
  maybe-eval-sat (((Var 2) ∧ (Var 1)) ∧ ((Var 1) ∧ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-316-dpll = refl

random-316-wsat :
  maybe-eval-sat (((Var 2) ∧ (Var 1)) ∧ ((Var 1) ∧ (¬ (Var 3)))) whole-sat
  ≡ just true
random-316-wsat = refl

random-317-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 3)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-317-dpll = refl

random-317-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 3)) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-317-wsat = refl

random-318-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-318-dpll = refl

random-318-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-318-wsat = refl

random-319-dpll :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 1)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-319-dpll = refl

random-319-wsat :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 1)) ∨ (Var 3))) whole-sat
  ≡ just true
random-319-wsat = refl

random-320-dpll :
  maybe-eval-sat ((Var 3) ∧ (¬ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-320-dpll = refl

random-320-wsat :
  maybe-eval-sat ((Var 3) ∧ (¬ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-320-wsat = refl

random-321-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-321-dpll = refl

random-321-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-321-wsat = refl

random-322-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) => ((Var 4) ∧ (Var 1))) ∨ (¬ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-322-dpll = refl

random-322-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) => ((Var 4) ∧ (Var 1))) ∨ (¬ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-322-wsat = refl

random-323-dpll :
  maybe-eval-sat (¬ (¬ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-323-dpll = refl

random-323-wsat :
  maybe-eval-sat (¬ (¬ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-323-wsat = refl

random-324-dpll :
  maybe-eval-sat ((Var 2) => (((Var 1) ∨ (Var 3)) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-324-dpll = refl

random-324-wsat :
  maybe-eval-sat ((Var 2) => (((Var 1) ∨ (Var 3)) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-324-wsat = refl

random-325-dpll :
  maybe-eval-sat ((Var 4) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-325-dpll = refl

random-325-wsat :
  maybe-eval-sat ((Var 4) ∧ (Var 2)) whole-sat
  ≡ just true
random-325-wsat = refl

random-326-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) ∧ (¬ (Var 2))) ∧ ((Var 1) => ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-326-dpll = refl

random-326-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) ∧ (¬ (Var 2))) ∧ ((Var 1) => ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-326-wsat = refl

random-327-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-327-dpll = refl

random-327-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-327-wsat = refl

random-328-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-328-dpll = refl

random-328-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-328-wsat = refl

random-329-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-329-dpll = refl

random-329-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-329-wsat = refl

random-330-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ (¬ (Var 4)))) whole-DPLL
  ≡ nothing
random-330-dpll = refl

random-330-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ (¬ (Var 4)))) whole-sat
  ≡ nothing
random-330-wsat = refl

random-331-dpll :
  maybe-eval-sat ((Var 2) ∧ ((Var 2) ∨ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-331-dpll = refl

random-331-wsat :
  maybe-eval-sat ((Var 2) ∧ ((Var 2) ∨ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-331-wsat = refl

random-332-dpll :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-DPLL
  ≡ just true
random-332-dpll = refl

random-332-wsat :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-sat
  ≡ just true
random-332-wsat = refl

random-333-dpll :
  maybe-eval-sat ((Var 4) => ((Var 2) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-333-dpll = refl

random-333-wsat :
  maybe-eval-sat ((Var 4) => ((Var 2) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-333-wsat = refl

random-334-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-334-dpll = refl

random-334-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-334-wsat = refl

random-335-dpll :
  maybe-eval-sat (((Var 4) ∨ ((Var 2) ∨ (Var 3))) ∧ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-335-dpll = refl

random-335-wsat :
  maybe-eval-sat (((Var 4) ∨ ((Var 2) ∨ (Var 3))) ∧ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-335-wsat = refl

random-336-dpll :
  maybe-eval-sat (((Var 4) ∨ ((Var 1) ∧ (Var 3))) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-336-dpll = refl

random-336-wsat :
  maybe-eval-sat (((Var 4) ∨ ((Var 1) ∧ (Var 3))) ∧ (Var 4)) whole-sat
  ≡ just true
random-336-wsat = refl

random-337-dpll :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-DPLL
  ≡ just true
random-337-dpll = refl

random-337-wsat :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-sat
  ≡ just true
random-337-wsat = refl

random-338-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ ((Var 3) => (Var 3)))) whole-DPLL
  ≡ just true
random-338-dpll = refl

random-338-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ ((Var 3) => (Var 3)))) whole-sat
  ≡ just true
random-338-wsat = refl

random-339-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-339-dpll = refl

random-339-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-339-wsat = refl

random-340-dpll :
  maybe-eval-sat ((((Var 4) => (Var 3)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-340-dpll = refl

random-340-wsat :
  maybe-eval-sat ((((Var 4) => (Var 3)) => (Var 3)) ∨ ((¬ (Var 1)) ∧ (¬ (Var 3)))) whole-sat
  ≡ just true
random-340-wsat = refl

random-341-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-341-dpll = refl

random-341-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-341-wsat = refl

random-342-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-342-dpll = refl

random-342-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-342-wsat = refl

random-343-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) => (¬ (Var 2))) => ((Var 4) ∧ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-343-dpll = refl

random-343-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) => (¬ (Var 2))) => ((Var 4) ∧ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-343-wsat = refl

random-344-dpll :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∨ (Var 3))) whole-DPLL
  ≡ nothing
random-344-dpll = refl

random-344-wsat :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∨ (Var 3))) whole-sat
  ≡ nothing
random-344-wsat = refl

random-345-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 4)) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-345-dpll = refl

random-345-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 4)) ∨ (Var 2))) whole-sat
  ≡ just true
random-345-wsat = refl

random-346-dpll :
  maybe-eval-sat ((Var 3) ∧ ((Var 4) ∨ ((Var 3) => (Var 3)))) whole-DPLL
  ≡ just true
random-346-dpll = refl

random-346-wsat :
  maybe-eval-sat ((Var 3) ∧ ((Var 4) ∨ ((Var 3) => (Var 3)))) whole-sat
  ≡ just true
random-346-wsat = refl

random-347-dpll :
  maybe-eval-sat ((Var 4) ∧ ((Var 2) => ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-347-dpll = refl

random-347-wsat :
  maybe-eval-sat ((Var 4) ∧ ((Var 2) => ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-347-wsat = refl

random-348-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => (Var 3))) whole-DPLL
  ≡ just true
random-348-dpll = refl

random-348-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => (Var 3))) whole-sat
  ≡ just true
random-348-wsat = refl

random-349-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-349-dpll = refl

random-349-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-349-wsat = refl

random-350-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-350-dpll = refl

random-350-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-350-wsat = refl

random-351-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-351-dpll = refl

random-351-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-351-wsat = refl

random-352-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-352-dpll = refl

random-352-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-352-wsat = refl

random-353-dpll :
  maybe-eval-sat (((Var 2) ∨ ((Var 1) => (Var 4))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-353-dpll = refl

random-353-wsat :
  maybe-eval-sat (((Var 2) ∨ ((Var 1) => (Var 4))) ∨ (Var 3)) whole-sat
  ≡ just true
random-353-wsat = refl

random-354-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-354-dpll = refl

random-354-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-354-wsat = refl

random-355-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) => (¬ (Var 3))) ∨ (((Var 2) ∧ (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-355-dpll = refl

random-355-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) => (¬ (Var 3))) ∨ (((Var 2) ∧ (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-355-wsat = refl

random-356-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 2)) ∧ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-356-dpll = refl

random-356-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 2)) ∧ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-356-wsat = refl

random-357-dpll :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (¬ (Var 4))) whole-DPLL
  ≡ just true
random-357-dpll = refl

random-357-wsat :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (¬ (Var 4))) whole-sat
  ≡ just true
random-357-wsat = refl

random-358-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => (Var 2)) ∨ ((Var 4) ∧ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-358-dpll = refl

random-358-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => (Var 2)) ∨ ((Var 4) ∧ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-358-wsat = refl

random-359-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-359-dpll = refl

random-359-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-359-wsat = refl

random-360-dpll :
  maybe-eval-sat ((¬ (Var 4)) ∧ (((Var 2) ∨ (Var 4)) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-360-dpll = refl

random-360-wsat :
  maybe-eval-sat ((¬ (Var 4)) ∧ (((Var 2) ∨ (Var 4)) ∨ (Var 2))) whole-sat
  ≡ just true
random-360-wsat = refl

random-361-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) => ((Var 4) => (Var 3))) => (¬ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-361-dpll = refl

random-361-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) => ((Var 4) => (Var 3))) => (¬ (¬ (Var 1)))) whole-sat
  ≡ just true
random-361-wsat = refl

random-362-dpll :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 4)) => ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-362-dpll = refl

random-362-wsat :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 4)) => ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-362-wsat = refl

random-363-dpll :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 1)) => (Var 3))) whole-DPLL
  ≡ just true
random-363-dpll = refl

random-363-wsat :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 1)) => (Var 3))) whole-sat
  ≡ just true
random-363-wsat = refl

random-364-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-364-dpll = refl

random-364-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-364-wsat = refl

random-365-dpll :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 4)) ∨ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-365-dpll = refl

random-365-wsat :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 4)) ∨ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-365-wsat = refl

random-366-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-366-dpll = refl

random-366-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-366-wsat = refl

random-367-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-367-dpll = refl

random-367-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) ∧ (Var 4))) whole-sat
  ≡ just true
random-367-wsat = refl

random-368-dpll :
  maybe-eval-sat ((Var 4) => (((Var 1) => (Var 2)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-368-dpll = refl

random-368-wsat :
  maybe-eval-sat ((Var 4) => (((Var 1) => (Var 2)) ∨ (Var 3))) whole-sat
  ≡ just true
random-368-wsat = refl

random-369-dpll :
  maybe-eval-sat ((Var 1) => (Var 4)) whole-DPLL
  ≡ just true
random-369-dpll = refl

random-369-wsat :
  maybe-eval-sat ((Var 1) => (Var 4)) whole-sat
  ≡ just true
random-369-wsat = refl

random-370-dpll :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 2))) ∨ ((Var 1) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-370-dpll = refl

random-370-wsat :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 2))) ∨ ((Var 1) ∧ (Var 3))) whole-sat
  ≡ just true
random-370-wsat = refl

random-371-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-371-dpll = refl

random-371-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-371-wsat = refl

random-372-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) => ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-372-dpll = refl

random-372-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) => ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-372-wsat = refl

random-373-dpll :
  maybe-eval-sat (((Var 2) => (Var 3)) ∧ (((Var 3) ∧ (Var 1)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-373-dpll = refl

random-373-wsat :
  maybe-eval-sat (((Var 2) => (Var 3)) ∧ (((Var 3) ∧ (Var 1)) ∧ (Var 2))) whole-sat
  ≡ just true
random-373-wsat = refl

random-374-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-374-dpll = refl

random-374-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-374-wsat = refl

random-375-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-375-dpll = refl

random-375-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-375-wsat = refl

random-376-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-376-dpll = refl

random-376-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-376-wsat = refl

random-377-dpll :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∨ ((Var 1) => (Var 1))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-377-dpll = refl

random-377-wsat :
  maybe-eval-sat ((((Var 4) => (Var 2)) ∨ ((Var 1) => (Var 1))) ∨ (Var 4)) whole-sat
  ≡ just true
random-377-wsat = refl

random-378-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 1)) ∧ ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-378-dpll = refl

random-378-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 1)) ∧ ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-378-wsat = refl

random-379-dpll :
  maybe-eval-sat ((Var 1) ∧ ((Var 3) ∨ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-379-dpll = refl

random-379-wsat :
  maybe-eval-sat ((Var 1) ∧ ((Var 3) ∨ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-379-wsat = refl

random-380-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) ∧ ((Var 2) ∧ (Var 1))) => (((Var 3) ∧ (Var 1)) ∧ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-380-dpll = refl

random-380-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) ∧ ((Var 2) ∧ (Var 1))) => (((Var 3) ∧ (Var 1)) ∧ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-380-wsat = refl

random-381-dpll :
  maybe-eval-sat (((Var 3) => ((Var 2) ∧ (Var 1))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-381-dpll = refl

random-381-wsat :
  maybe-eval-sat (((Var 3) => ((Var 2) ∧ (Var 1))) ∨ (Var 2)) whole-sat
  ≡ just true
random-381-wsat = refl

random-382-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 2)) ∧ ((Var 3) ∨ (Var 1))) => (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-382-dpll = refl

random-382-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 2)) ∧ ((Var 3) ∨ (Var 1))) => (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-382-wsat = refl

random-383-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 2))) ∨ ((Var 4) ∧ ((Var 4) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-383-dpll = refl

random-383-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 2))) ∨ ((Var 4) ∧ ((Var 4) ∨ (Var 4)))) whole-sat
  ≡ just true
random-383-wsat = refl

random-384-dpll :
  maybe-eval-sat ((¬ (Var 2)) ∨ ((Var 1) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-384-dpll = refl

random-384-wsat :
  maybe-eval-sat ((¬ (Var 2)) ∨ ((Var 1) ∧ (Var 1))) whole-sat
  ≡ just true
random-384-wsat = refl

random-385-dpll :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (((Var 4) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-385-dpll = refl

random-385-wsat :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (((Var 4) ∨ (Var 3)) ∧ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-385-wsat = refl

random-386-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-386-dpll = refl

random-386-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-386-wsat = refl

random-387-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-387-dpll = refl

random-387-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-387-wsat = refl

random-388-dpll :
  maybe-eval-sat ((¬ (Var 3)) ∨ (((Var 4) => (Var 3)) => (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-388-dpll = refl

random-388-wsat :
  maybe-eval-sat ((¬ (Var 3)) ∨ (((Var 4) => (Var 3)) => (¬ (Var 3)))) whole-sat
  ≡ just true
random-388-wsat = refl

random-389-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-389-dpll = refl

random-389-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-389-wsat = refl

random-390-dpll :
  maybe-eval-sat ((¬ ((Var 1) => (Var 1))) ∧ (¬ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ nothing
random-390-dpll = refl

random-390-wsat :
  maybe-eval-sat ((¬ ((Var 1) => (Var 1))) ∧ (¬ ((Var 3) => (Var 2)))) whole-sat
  ≡ nothing
random-390-wsat = refl

random-391-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 2))) => (((Var 4) => (Var 2)) => (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-391-dpll = refl

random-391-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 2))) => (((Var 4) => (Var 2)) => (¬ (Var 2)))) whole-sat
  ≡ just true
random-391-wsat = refl

random-392-dpll :
  maybe-eval-sat (((Var 4) ∨ (Var 4)) => (Var 4)) whole-DPLL
  ≡ just true
random-392-dpll = refl

random-392-wsat :
  maybe-eval-sat (((Var 4) ∨ (Var 4)) => (Var 4)) whole-sat
  ≡ just true
random-392-wsat = refl

random-393-dpll :
  maybe-eval-sat (¬ ((Var 1) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-393-dpll = refl

random-393-wsat :
  maybe-eval-sat (¬ ((Var 1) ∨ (Var 2))) whole-sat
  ≡ just true
random-393-wsat = refl

random-394-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∨ ((Var 3) ∧ (Var 3))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-394-dpll = refl

random-394-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∨ ((Var 3) ∧ (Var 3))) ∨ (Var 4)) whole-sat
  ≡ just true
random-394-wsat = refl

random-395-dpll :
  maybe-eval-sat ((Var 4) ∧ (((Var 2) => (Var 4)) ∨ ((Var 4) => (Var 4)))) whole-DPLL
  ≡ just true
random-395-dpll = refl

random-395-wsat :
  maybe-eval-sat ((Var 4) ∧ (((Var 2) => (Var 4)) ∨ ((Var 4) => (Var 4)))) whole-sat
  ≡ just true
random-395-wsat = refl

random-396-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 3))) ∧ ((¬ (Var 2)) ∧ (Var 3))) whole-DPLL
  ≡ nothing
random-396-dpll = refl

random-396-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 3))) ∧ ((¬ (Var 2)) ∧ (Var 3))) whole-sat
  ≡ nothing
random-396-wsat = refl

random-397-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) ∨ ((Var 4) ∨ (Var 4))) => (¬ (Var 3))) whole-DPLL
  ≡ just true
random-397-dpll = refl

random-397-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) ∨ ((Var 4) ∨ (Var 4))) => (¬ (Var 3))) whole-sat
  ≡ just true
random-397-wsat = refl

random-398-dpll :
  maybe-eval-sat (((Var 1) ∨ (Var 1)) ∧ (((Var 1) ∨ (Var 4)) ∨ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-398-dpll = refl

random-398-wsat :
  maybe-eval-sat (((Var 1) ∨ (Var 1)) ∧ (((Var 1) ∨ (Var 4)) ∨ (¬ (Var 1)))) whole-sat
  ≡ just true
random-398-wsat = refl

random-399-dpll :
  maybe-eval-sat ((Var 4) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-399-dpll = refl

random-399-wsat :
  maybe-eval-sat ((Var 4) ∧ (Var 4)) whole-sat
  ≡ just true
random-399-wsat = refl

random-400-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-400-dpll = refl

random-400-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-400-wsat = refl

random-401-dpll :
  maybe-eval-sat (((Var 1) => (¬ (Var 1))) => (Var 2)) whole-DPLL
  ≡ just true
random-401-dpll = refl

random-401-wsat :
  maybe-eval-sat (((Var 1) => (¬ (Var 1))) => (Var 2)) whole-sat
  ≡ just true
random-401-wsat = refl

random-402-dpll :
  maybe-eval-sat ((Var 3) ∨ ((Var 3) ∨ ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-402-dpll = refl

random-402-wsat :
  maybe-eval-sat ((Var 3) ∨ ((Var 3) ∨ ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-402-wsat = refl

random-403-dpll :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∧ ((Var 3) ∧ (Var 2))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-403-dpll = refl

random-403-wsat :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∧ ((Var 3) ∧ (Var 2))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-403-wsat = refl

random-404-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-404-dpll = refl

random-404-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-404-wsat = refl

random-405-dpll :
  maybe-eval-sat (((Var 2) ∧ ((Var 1) ∨ (Var 3))) ∨ (((Var 2) ∧ (Var 1)) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-405-dpll = refl

random-405-wsat :
  maybe-eval-sat (((Var 2) ∧ ((Var 1) ∨ (Var 3))) ∨ (((Var 2) ∧ (Var 1)) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-405-wsat = refl

random-406-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-406-dpll = refl

random-406-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-406-wsat = refl

random-407-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => ((Var 2) => (Var 1))) => ((Var 2) => ((Var 1) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-407-dpll = refl

random-407-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => ((Var 2) => (Var 1))) => ((Var 2) => ((Var 1) ∧ (Var 2)))) whole-sat
  ≡ just true
random-407-wsat = refl

random-408-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 1) ∧ (Var 4))) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-408-dpll = refl

random-408-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 1) ∧ (Var 4))) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-408-wsat = refl

random-409-dpll :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (((Var 1) ∨ (Var 4)) => ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-409-dpll = refl

random-409-wsat :
  maybe-eval-sat ((¬ (¬ (Var 3))) => (((Var 1) ∨ (Var 4)) => ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-409-wsat = refl

random-410-dpll :
  maybe-eval-sat ((Var 2) => (¬ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-410-dpll = refl

random-410-wsat :
  maybe-eval-sat ((Var 2) => (¬ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-410-wsat = refl

random-411-dpll :
  maybe-eval-sat (((Var 1) => (Var 3)) ∨ (((Var 3) ∧ (Var 3)) ∧ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-411-dpll = refl

random-411-wsat :
  maybe-eval-sat (((Var 1) => (Var 3)) ∨ (((Var 3) ∧ (Var 3)) ∧ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-411-wsat = refl

random-412-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-412-dpll = refl

random-412-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-412-wsat = refl

random-413-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-413-dpll = refl

random-413-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-413-wsat = refl

random-414-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-414-dpll = refl

random-414-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-414-wsat = refl

random-415-dpll :
  maybe-eval-sat ((Var 4) ∧ (((Var 3) ∨ (Var 3)) => ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-415-dpll = refl

random-415-wsat :
  maybe-eval-sat ((Var 4) ∧ (((Var 3) ∨ (Var 3)) => ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-415-wsat = refl

random-416-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-416-dpll = refl

random-416-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-416-wsat = refl

random-417-dpll :
  maybe-eval-sat ((¬ (Var 1)) ∧ (((Var 3) ∨ (Var 3)) ∧ ((Var 2) => (Var 1)))) whole-DPLL
  ≡ just true
random-417-dpll = refl

random-417-wsat :
  maybe-eval-sat ((¬ (Var 1)) ∧ (((Var 3) ∨ (Var 3)) ∧ ((Var 2) => (Var 1)))) whole-sat
  ≡ just true
random-417-wsat = refl

random-418-dpll :
  maybe-eval-sat ((((Var 3) => (Var 2)) => (¬ (Var 1))) => (((Var 1) ∨ (Var 4)) => (Var 1))) whole-DPLL
  ≡ just true
random-418-dpll = refl

random-418-wsat :
  maybe-eval-sat ((((Var 3) => (Var 2)) => (¬ (Var 1))) => (((Var 1) ∨ (Var 4)) => (Var 1))) whole-sat
  ≡ just true
random-418-wsat = refl

random-419-dpll :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∨ (Var 4)) ∨ (¬ ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-419-dpll = refl

random-419-wsat :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∨ (Var 4)) ∨ (¬ ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-419-wsat = refl

random-420-dpll :
  maybe-eval-sat (¬ ((Var 2) ∧ ((Var 2) => (Var 2)))) whole-DPLL
  ≡ just true
random-420-dpll = refl

random-420-wsat :
  maybe-eval-sat (¬ ((Var 2) ∧ ((Var 2) => (Var 2)))) whole-sat
  ≡ just true
random-420-wsat = refl

random-421-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => ((Var 2) => (Var 2)))) whole-DPLL
  ≡ nothing
random-421-dpll = refl

random-421-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => ((Var 2) => (Var 2)))) whole-sat
  ≡ nothing
random-421-wsat = refl

random-422-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-422-dpll = refl

random-422-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-422-wsat = refl

random-423-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-423-dpll = refl

random-423-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-423-wsat = refl

random-424-dpll :
  maybe-eval-sat (((Var 2) => (¬ (Var 4))) ∨ (((Var 4) ∨ (Var 4)) => ((Var 2) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-424-dpll = refl

random-424-wsat :
  maybe-eval-sat (((Var 2) => (¬ (Var 4))) ∨ (((Var 4) ∨ (Var 4)) => ((Var 2) ∨ (Var 4)))) whole-sat
  ≡ just true
random-424-wsat = refl

random-425-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-425-dpll = refl

random-425-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-425-wsat = refl

random-426-dpll :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∧ ((Var 1) => (Var 2)))) whole-DPLL
  ≡ just true
random-426-dpll = refl

random-426-wsat :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∧ ((Var 1) => (Var 2)))) whole-sat
  ≡ just true
random-426-wsat = refl

random-427-dpll :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 2)) => ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-427-dpll = refl

random-427-wsat :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 2)) => ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-427-wsat = refl

random-428-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∧ (Var 2)) => (((Var 1) ∨ (Var 4)) => (Var 4))) whole-DPLL
  ≡ just true
random-428-dpll = refl

random-428-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∧ (Var 2)) => (((Var 1) ∨ (Var 4)) => (Var 4))) whole-sat
  ≡ just true
random-428-wsat = refl

random-429-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) ∧ (Var 4)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-429-dpll = refl

random-429-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) ∧ (Var 4)) ∧ (Var 2))) whole-sat
  ≡ just true
random-429-wsat = refl

random-430-dpll :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∧ (Var 4)) ∧ (¬ (Var 4))) whole-DPLL
  ≡ nothing
random-430-dpll = refl

random-430-wsat :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∧ (Var 4)) ∧ (¬ (Var 4))) whole-sat
  ≡ nothing
random-430-wsat = refl

random-431-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 4)) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-431-dpll = refl

random-431-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 4)) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-431-wsat = refl

random-432-dpll :
  maybe-eval-sat ((((Var 1) => (Var 1)) => ((Var 2) ∨ (Var 2))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-432-dpll = refl

random-432-wsat :
  maybe-eval-sat ((((Var 1) => (Var 1)) => ((Var 2) ∨ (Var 2))) ∧ (¬ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-432-wsat = refl

random-433-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-433-dpll = refl

random-433-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-433-wsat = refl

random-434-dpll :
  maybe-eval-sat ((((Var 3) => (Var 3)) => (Var 4)) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-434-dpll = refl

random-434-wsat :
  maybe-eval-sat ((((Var 3) => (Var 3)) => (Var 4)) ∨ (Var 1)) whole-sat
  ≡ just true
random-434-wsat = refl

random-435-dpll :
  maybe-eval-sat ((((Var 1) => (Var 2)) ∧ (Var 3)) ∧ ((Var 3) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-435-dpll = refl

random-435-wsat :
  maybe-eval-sat ((((Var 1) => (Var 2)) ∧ (Var 3)) ∧ ((Var 3) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-435-wsat = refl

random-436-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-436-dpll = refl

random-436-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-436-wsat = refl

random-437-dpll :
  maybe-eval-sat (¬ (((Var 4) => (Var 2)) => ((Var 1) => (Var 1)))) whole-DPLL
  ≡ nothing
random-437-dpll = refl

random-437-wsat :
  maybe-eval-sat (¬ (((Var 4) => (Var 2)) => ((Var 1) => (Var 1)))) whole-sat
  ≡ nothing
random-437-wsat = refl

random-438-dpll :
  maybe-eval-sat ((Var 4) ∧ ((Var 3) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-438-dpll = refl

random-438-wsat :
  maybe-eval-sat ((Var 4) ∧ ((Var 3) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-438-wsat = refl

random-439-dpll :
  maybe-eval-sat (¬ (¬ (Var 3))) whole-DPLL
  ≡ just true
random-439-dpll = refl

random-439-wsat :
  maybe-eval-sat (¬ (¬ (Var 3))) whole-sat
  ≡ just true
random-439-wsat = refl

random-440-dpll :
  maybe-eval-sat (¬ ((Var 1) ∨ (Var 1))) whole-DPLL
  ≡ just true
random-440-dpll = refl

random-440-wsat :
  maybe-eval-sat (¬ ((Var 1) ∨ (Var 1))) whole-sat
  ≡ just true
random-440-wsat = refl

random-441-dpll :
  maybe-eval-sat ((Var 3) ∨ ((Var 4) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-441-dpll = refl

random-441-wsat :
  maybe-eval-sat ((Var 3) ∨ ((Var 4) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-441-wsat = refl

random-442-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∧ ((Var 3) ∧ (Var 1))) => (¬ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-442-dpll = refl

random-442-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∧ ((Var 3) ∧ (Var 1))) => (¬ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-442-wsat = refl

random-443-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) ∧ (Var 1)) ∧ ((Var 2) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-443-dpll = refl

random-443-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) ∧ (Var 1)) ∧ ((Var 2) ∧ (Var 1))) whole-sat
  ≡ just true
random-443-wsat = refl

random-444-dpll :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-444-dpll = refl

random-444-wsat :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-444-wsat = refl

random-445-dpll :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-445-dpll = refl

random-445-wsat :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-445-wsat = refl

random-446-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-446-dpll = refl

random-446-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-446-wsat = refl

random-447-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-447-dpll = refl

random-447-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-447-wsat = refl

random-448-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-448-dpll = refl

random-448-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-448-wsat = refl

random-449-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 4)) ∧ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-449-dpll = refl

random-449-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 4)) ∧ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-449-wsat = refl

random-450-dpll :
  maybe-eval-sat (((Var 4) => (Var 3)) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-450-dpll = refl

random-450-wsat :
  maybe-eval-sat (((Var 4) => (Var 3)) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-450-wsat = refl

random-451-dpll :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-DPLL
  ≡ just true
random-451-dpll = refl

random-451-wsat :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-sat
  ≡ just true
random-451-wsat = refl

random-452-dpll :
  maybe-eval-sat ((Var 2) ∧ ((¬ (Var 2)) => ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-452-dpll = refl

random-452-wsat :
  maybe-eval-sat ((Var 2) ∧ ((¬ (Var 2)) => ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-452-wsat = refl

random-453-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-453-dpll = refl

random-453-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-453-wsat = refl

random-454-dpll :
  maybe-eval-sat ((Var 1) => ((Var 4) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-454-dpll = refl

random-454-wsat :
  maybe-eval-sat ((Var 1) => ((Var 4) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-454-wsat = refl

random-455-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∧ ((Var 1) ∨ (Var 2))) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-455-dpll = refl

random-455-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∧ ((Var 1) ∨ (Var 2))) ∧ (Var 1)) whole-sat
  ≡ just true
random-455-wsat = refl

random-456-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-456-dpll = refl

random-456-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-456-wsat = refl

random-457-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 1)) => ((Var 2) ∧ (Var 1))) ∧ ((¬ (Var 2)) ∨ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-457-dpll = refl

random-457-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 1)) => ((Var 2) ∧ (Var 1))) ∧ ((¬ (Var 2)) ∨ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-457-wsat = refl

random-458-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-458-dpll = refl

random-458-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-458-wsat = refl

random-459-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 1))) ∨ (((Var 1) ∧ (Var 2)) ∧ ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-459-dpll = refl

random-459-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 1))) ∨ (((Var 1) ∧ (Var 2)) ∧ ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-459-wsat = refl

random-460-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-460-dpll = refl

random-460-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-460-wsat = refl

random-461-dpll :
  maybe-eval-sat (¬ ((Var 4) => ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-461-dpll = refl

random-461-wsat :
  maybe-eval-sat (¬ ((Var 4) => ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-461-wsat = refl

random-462-dpll :
  maybe-eval-sat ((Var 3) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-462-dpll = refl

random-462-wsat :
  maybe-eval-sat ((Var 3) ∧ (Var 2)) whole-sat
  ≡ just true
random-462-wsat = refl

random-463-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-463-dpll = refl

random-463-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-463-wsat = refl

random-464-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) => (Var 3))) ∨ ((Var 4) ∧ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-464-dpll = refl

random-464-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) => (Var 3))) ∨ ((Var 4) ∧ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-464-wsat = refl

random-465-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-465-dpll = refl

random-465-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) ∧ (Var 1)) whole-sat
  ≡ just true
random-465-wsat = refl

random-466-dpll :
  maybe-eval-sat ((((Var 4) => (Var 3)) => (Var 3)) => (((Var 2) ∧ (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-466-dpll = refl

random-466-wsat :
  maybe-eval-sat ((((Var 4) => (Var 3)) => (Var 3)) => (((Var 2) ∧ (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-466-wsat = refl

random-467-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 3) ∨ (Var 1))) => (Var 2)) whole-DPLL
  ≡ just true
random-467-dpll = refl

random-467-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 3) ∨ (Var 1))) => (Var 2)) whole-sat
  ≡ just true
random-467-wsat = refl

random-468-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-468-dpll = refl

random-468-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-468-wsat = refl

random-469-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-469-dpll = refl

random-469-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-469-wsat = refl

random-470-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) ∨ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-470-dpll = refl

random-470-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) ∨ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-470-wsat = refl

random-471-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-471-dpll = refl

random-471-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-471-wsat = refl

random-472-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-472-dpll = refl

random-472-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-472-wsat = refl

random-473-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∨ (Var 2)) => (Var 4)) whole-DPLL
  ≡ just true
random-473-dpll = refl

random-473-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∨ (Var 2)) => (Var 4)) whole-sat
  ≡ just true
random-473-wsat = refl

random-474-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 1))) ∨ (((Var 4) => (Var 3)) ∨ ((Var 3) => (Var 3)))) whole-DPLL
  ≡ just true
random-474-dpll = refl

random-474-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 1))) ∨ (((Var 4) => (Var 3)) ∨ ((Var 3) => (Var 3)))) whole-sat
  ≡ just true
random-474-wsat = refl

random-475-dpll :
  maybe-eval-sat (¬ (((Var 4) => (Var 1)) => ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-475-dpll = refl

random-475-wsat :
  maybe-eval-sat (¬ (((Var 4) => (Var 1)) => ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-475-wsat = refl

random-476-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) => (Var 1)))) whole-DPLL
  ≡ just true
random-476-dpll = refl

random-476-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) => (Var 1)))) whole-sat
  ≡ just true
random-476-wsat = refl

random-477-dpll :
  maybe-eval-sat ((Var 3) => (¬ (Var 3))) whole-DPLL
  ≡ just true
random-477-dpll = refl

random-477-wsat :
  maybe-eval-sat ((Var 3) => (¬ (Var 3))) whole-sat
  ≡ just true
random-477-wsat = refl

random-478-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => ((Var 2) => (Var 1)))) whole-DPLL
  ≡ just true
random-478-dpll = refl

random-478-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => ((Var 2) => (Var 1)))) whole-sat
  ≡ just true
random-478-wsat = refl

random-479-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => ((Var 4) ∨ (Var 1))) ∧ (((Var 1) ∨ (Var 3)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-479-dpll = refl

random-479-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => ((Var 4) ∨ (Var 1))) ∧ (((Var 1) ∨ (Var 3)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-479-wsat = refl

random-480-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ (Var 4)) => (((Var 4) => (Var 2)) ∨ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-480-dpll = refl

random-480-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ (Var 4)) => (((Var 4) => (Var 2)) ∨ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-480-wsat = refl

random-481-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) ∨ (((Var 3) ∧ (Var 3)) ∨ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-481-dpll = refl

random-481-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) ∨ (((Var 3) ∧ (Var 3)) ∨ ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-481-wsat = refl

random-482-dpll :
  maybe-eval-sat ((((Var 3) => (Var 4)) => (¬ (Var 3))) ∧ (((Var 3) => (Var 4)) ∨ (Var 1))) whole-DPLL
  ≡ just true
random-482-dpll = refl

random-482-wsat :
  maybe-eval-sat ((((Var 3) => (Var 4)) => (¬ (Var 3))) ∧ (((Var 3) => (Var 4)) ∨ (Var 1))) whole-sat
  ≡ just true
random-482-wsat = refl

random-483-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-483-dpll = refl

random-483-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-483-wsat = refl

random-484-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∧ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-484-dpll = refl

random-484-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∧ ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-484-wsat = refl

random-485-dpll :
  maybe-eval-sat ((Var 4) ∨ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-485-dpll = refl

random-485-wsat :
  maybe-eval-sat ((Var 4) ∨ (¬ (Var 2))) whole-sat
  ≡ just true
random-485-wsat = refl

random-486-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-486-dpll = refl

random-486-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-486-wsat = refl

random-487-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 1))) whole-DPLL
  ≡ just true
random-487-dpll = refl

random-487-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 1))) whole-sat
  ≡ just true
random-487-wsat = refl

random-488-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) ∨ ((Var 4) => (Var 4))) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-488-dpll = refl

random-488-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) ∨ ((Var 4) => (Var 4))) ∨ (Var 1)) whole-sat
  ≡ just true
random-488-wsat = refl

random-489-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) => (¬ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-489-dpll = refl

random-489-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) => (¬ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-489-wsat = refl

random-490-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-490-dpll = refl

random-490-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-490-wsat = refl

random-491-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-491-dpll = refl

random-491-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-491-wsat = refl

random-492-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-492-dpll = refl

random-492-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 1))) whole-sat
  ≡ just true
random-492-wsat = refl

random-493-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-493-dpll = refl

random-493-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-493-wsat = refl

random-494-dpll :
  maybe-eval-sat ((¬ ((Var 4) => (Var 4))) ∨ (¬ (Var 4))) whole-DPLL
  ≡ just true
random-494-dpll = refl

random-494-wsat :
  maybe-eval-sat ((¬ ((Var 4) => (Var 4))) ∨ (¬ (Var 4))) whole-sat
  ≡ just true
random-494-wsat = refl

random-495-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-495-dpll = refl

random-495-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-495-wsat = refl

random-496-dpll :
  maybe-eval-sat (((Var 2) => ((Var 3) => (Var 2))) ∨ (((Var 1) ∧ (Var 3)) => ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-496-dpll = refl

random-496-wsat :
  maybe-eval-sat (((Var 2) => ((Var 3) => (Var 2))) ∨ (((Var 1) ∧ (Var 3)) => ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-496-wsat = refl

random-497-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ (Var 3)) ∧ (((Var 3) => (Var 1)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-497-dpll = refl

random-497-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ (Var 3)) ∧ (((Var 3) => (Var 1)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-497-wsat = refl

random-498-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-498-dpll = refl

random-498-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-498-wsat = refl

random-499-dpll :
  maybe-eval-sat (¬ ((¬ (Var 4)) => ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-499-dpll = refl

random-499-wsat :
  maybe-eval-sat (¬ ((¬ (Var 4)) => ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-499-wsat = refl

random-500-dpll :
  maybe-eval-sat ((Var 4) ∨ ((Var 3) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-500-dpll = refl

random-500-wsat :
  maybe-eval-sat ((Var 4) ∨ ((Var 3) ∨ (¬ (Var 2)))) whole-sat
  ≡ just true
random-500-wsat = refl

random-501-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) => (Var 1))) ∨ (¬ ((Var 3) => (Var 3)))) whole-DPLL
  ≡ just true
random-501-dpll = refl

random-501-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) => (Var 1))) ∨ (¬ ((Var 3) => (Var 3)))) whole-sat
  ≡ just true
random-501-wsat = refl

random-502-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-502-dpll = refl

random-502-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-502-wsat = refl

random-503-dpll :
  maybe-eval-sat ((((Var 4) => (Var 1)) ∨ (¬ (Var 3))) ∨ ((Var 3) => ((Var 2) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-503-dpll = refl

random-503-wsat :
  maybe-eval-sat ((((Var 4) => (Var 1)) ∨ (¬ (Var 3))) ∨ ((Var 3) => ((Var 2) ∧ (Var 2)))) whole-sat
  ≡ just true
random-503-wsat = refl

random-504-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-504-dpll = refl

random-504-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-504-wsat = refl

random-505-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-505-dpll = refl

random-505-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-505-wsat = refl

random-506-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-506-dpll = refl

random-506-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-506-wsat = refl

random-507-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-507-dpll = refl

random-507-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-507-wsat = refl

random-508-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-508-dpll = refl

random-508-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-508-wsat = refl

random-509-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-509-dpll = refl

random-509-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-509-wsat = refl

random-510-dpll :
  maybe-eval-sat ((Var 2) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-510-dpll = refl

random-510-wsat :
  maybe-eval-sat ((Var 2) ∨ (Var 2)) whole-sat
  ≡ just true
random-510-wsat = refl

random-511-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∨ (Var 2)) ∨ (((Var 2) ∨ (Var 3)) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-511-dpll = refl

random-511-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∨ (Var 2)) ∨ (((Var 2) ∨ (Var 3)) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-511-wsat = refl

random-512-dpll :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∨ ((Var 2) ∧ (Var 2))) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-512-dpll = refl

random-512-wsat :
  maybe-eval-sat ((((Var 2) => (Var 4)) ∨ ((Var 2) ∧ (Var 2))) ∨ (Var 1)) whole-sat
  ≡ just true
random-512-wsat = refl

random-513-dpll :
  maybe-eval-sat ((Var 2) ∧ (((Var 1) ∧ (Var 1)) ∨ ((Var 1) => (Var 4)))) whole-DPLL
  ≡ just true
random-513-dpll = refl

random-513-wsat :
  maybe-eval-sat ((Var 2) ∧ (((Var 1) ∧ (Var 1)) ∨ ((Var 1) => (Var 4)))) whole-sat
  ≡ just true
random-513-wsat = refl

random-514-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) => ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-514-dpll = refl

random-514-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) => ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-514-wsat = refl

random-515-dpll :
  maybe-eval-sat ((Var 1) ∧ (¬ ((Var 2) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-515-dpll = refl

random-515-wsat :
  maybe-eval-sat ((Var 1) ∧ (¬ ((Var 2) ∧ (Var 4)))) whole-sat
  ≡ just true
random-515-wsat = refl

random-516-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-516-dpll = refl

random-516-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-516-wsat = refl

random-517-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-517-dpll = refl

random-517-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-517-wsat = refl

random-518-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∨ ((Var 4) ∧ (Var 2))) => (((Var 4) ∨ (Var 2)) => ((Var 3) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-518-dpll = refl

random-518-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∨ ((Var 4) ∧ (Var 2))) => (((Var 4) ∨ (Var 2)) => ((Var 3) ∧ (Var 2)))) whole-sat
  ≡ just true
random-518-wsat = refl

random-519-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 3)) ∧ ((¬ (Var 2)) ∧ ((Var 2) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-519-dpll = refl

random-519-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 3)) ∧ ((¬ (Var 2)) ∧ ((Var 2) ∨ (Var 4)))) whole-sat
  ≡ just true
random-519-wsat = refl

random-520-dpll :
  maybe-eval-sat (¬ ((¬ (Var 2)) => (Var 1))) whole-DPLL
  ≡ just true
random-520-dpll = refl

random-520-wsat :
  maybe-eval-sat (¬ ((¬ (Var 2)) => (Var 1))) whole-sat
  ≡ just true
random-520-wsat = refl

random-521-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-521-dpll = refl

random-521-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-521-wsat = refl

random-522-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∨ ((Var 4) ∨ (Var 3))) ∨ ((Var 1) ∧ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-522-dpll = refl

random-522-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∨ ((Var 4) ∨ (Var 3))) ∨ ((Var 1) ∧ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-522-wsat = refl

random-523-dpll :
  maybe-eval-sat ((¬ ((Var 1) => (Var 4))) => ((Var 2) ∨ (Var 1))) whole-DPLL
  ≡ just true
random-523-dpll = refl

random-523-wsat :
  maybe-eval-sat ((¬ ((Var 1) => (Var 4))) => ((Var 2) ∨ (Var 1))) whole-sat
  ≡ just true
random-523-wsat = refl

random-524-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-524-dpll = refl

random-524-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-524-wsat = refl

random-525-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-525-dpll = refl

random-525-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-525-wsat = refl

random-526-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 1))) ∨ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-526-dpll = refl

random-526-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 1))) ∨ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-526-wsat = refl

random-527-dpll :
  maybe-eval-sat (¬ (Var 2)) whole-DPLL
  ≡ just true
random-527-dpll = refl

random-527-wsat :
  maybe-eval-sat (¬ (Var 2)) whole-sat
  ≡ just true
random-527-wsat = refl

random-528-dpll :
  maybe-eval-sat (¬ (Var 1)) whole-DPLL
  ≡ just true
random-528-dpll = refl

random-528-wsat :
  maybe-eval-sat (¬ (Var 1)) whole-sat
  ≡ just true
random-528-wsat = refl

random-529-dpll :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-529-dpll = refl

random-529-wsat :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 4)))) whole-sat
  ≡ just true
random-529-wsat = refl

random-530-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-530-dpll = refl

random-530-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-530-wsat = refl

random-531-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) ∧ ((¬ (Var 2)) => (Var 4))) whole-DPLL
  ≡ just true
random-531-dpll = refl

random-531-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) ∧ ((¬ (Var 2)) => (Var 4))) whole-sat
  ≡ just true
random-531-wsat = refl

random-532-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∧ (Var 3)) ∨ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-532-dpll = refl

random-532-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∧ (Var 3)) ∨ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-532-wsat = refl

random-533-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-533-dpll = refl

random-533-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-533-wsat = refl

random-534-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-534-dpll = refl

random-534-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-534-wsat = refl

random-535-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-535-dpll = refl

random-535-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-535-wsat = refl

random-536-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 2))) => (((Var 4) ∨ (Var 1)) ∨ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-536-dpll = refl

random-536-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 2))) => (((Var 4) ∨ (Var 1)) ∨ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-536-wsat = refl

random-537-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-537-dpll = refl

random-537-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-537-wsat = refl

random-538-dpll :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ ((Var 3) ∧ ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-538-dpll = refl

random-538-wsat :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ ((Var 3) ∧ ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-538-wsat = refl

random-539-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∨ (¬ (Var 3))) => (((Var 4) => (Var 3)) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-539-dpll = refl

random-539-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∨ (¬ (Var 3))) => (((Var 4) => (Var 3)) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-539-wsat = refl

random-540-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 2))) => (((Var 2) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-540-dpll = refl

random-540-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 2))) => (((Var 2) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-540-wsat = refl

random-541-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-541-dpll = refl

random-541-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-541-wsat = refl

random-542-dpll :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 1)) => ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-542-dpll = refl

random-542-wsat :
  maybe-eval-sat (¬ (((Var 4) ∨ (Var 1)) => ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-542-wsat = refl

random-543-dpll :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 2) ∨ (Var 4))) ∨ ((Var 4) => (Var 1))) whole-DPLL
  ≡ just true
random-543-dpll = refl

random-543-wsat :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 2) ∨ (Var 4))) ∨ ((Var 4) => (Var 1))) whole-sat
  ≡ just true
random-543-wsat = refl

random-544-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∨ (Var 1)) => (((Var 1) => (Var 4)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-544-dpll = refl

random-544-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∨ (Var 1)) => (((Var 1) => (Var 4)) ∧ (Var 4))) whole-sat
  ≡ just true
random-544-wsat = refl

random-545-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) => ((Var 4) => (Var 3))) => ((Var 3) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-545-dpll = refl

random-545-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) => ((Var 4) => (Var 3))) => ((Var 3) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-545-wsat = refl

random-546-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-546-dpll = refl

random-546-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-546-wsat = refl

random-547-dpll :
  maybe-eval-sat ((((Var 3) => (Var 4)) ∧ (Var 3)) ∨ (((Var 4) => (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-547-dpll = refl

random-547-wsat :
  maybe-eval-sat ((((Var 3) => (Var 4)) ∧ (Var 3)) ∨ (((Var 4) => (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-547-wsat = refl

random-548-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) => ((Var 2) ∨ (Var 2))) ∨ ((¬ (Var 4)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-548-dpll = refl

random-548-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) => ((Var 2) ∨ (Var 2))) ∨ ((¬ (Var 4)) ∨ (Var 3))) whole-sat
  ≡ just true
random-548-wsat = refl

random-549-dpll :
  maybe-eval-sat (((Var 3) ∧ ((Var 1) => (Var 1))) ∨ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-549-dpll = refl

random-549-wsat :
  maybe-eval-sat (((Var 3) ∧ ((Var 1) => (Var 1))) ∨ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-549-wsat = refl

random-550-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) ∧ (((Var 4) ∨ (Var 1)) => ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-550-dpll = refl

random-550-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 3))) ∧ (((Var 4) ∨ (Var 1)) => ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-550-wsat = refl

random-551-dpll :
  maybe-eval-sat ((((Var 2) => (Var 2)) => ((Var 4) ∧ (Var 3))) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-551-dpll = refl

random-551-wsat :
  maybe-eval-sat ((((Var 2) => (Var 2)) => ((Var 4) ∧ (Var 3))) ∧ (Var 1)) whole-sat
  ≡ just true
random-551-wsat = refl

random-552-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-552-dpll = refl

random-552-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-552-wsat = refl

random-553-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-553-dpll = refl

random-553-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-553-wsat = refl

random-554-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∧ ((Var 2) => (Var 4))) => (¬ (Var 3))) whole-DPLL
  ≡ just true
random-554-dpll = refl

random-554-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∧ ((Var 2) => (Var 4))) => (¬ (Var 3))) whole-sat
  ≡ just true
random-554-wsat = refl

random-555-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) => (((Var 1) ∨ (Var 2)) ∨ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-555-dpll = refl

random-555-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) => (((Var 1) ∨ (Var 2)) ∨ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-555-wsat = refl

random-556-dpll :
  maybe-eval-sat ((¬ ((Var 1) => (Var 3))) ∧ ((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-556-dpll = refl

random-556-wsat :
  maybe-eval-sat ((¬ ((Var 1) => (Var 3))) ∧ ((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-556-wsat = refl

random-557-dpll :
  maybe-eval-sat ((¬ (¬ (Var 1))) => (Var 2)) whole-DPLL
  ≡ just true
random-557-dpll = refl

random-557-wsat :
  maybe-eval-sat ((¬ (¬ (Var 1))) => (Var 2)) whole-sat
  ≡ just true
random-557-wsat = refl

random-558-dpll :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ ((Var 1) => (Var 1))) ∨ ((Var 1) ∨ ((Var 3) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-558-dpll = refl

random-558-wsat :
  maybe-eval-sat ((((Var 4) => (Var 4)) ∨ ((Var 1) => (Var 1))) ∨ ((Var 1) ∨ ((Var 3) ∨ (Var 4)))) whole-sat
  ≡ just true
random-558-wsat = refl

random-559-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-559-dpll = refl

random-559-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-559-wsat = refl

random-560-dpll :
  maybe-eval-sat ((Var 2) => (Var 3)) whole-DPLL
  ≡ just true
random-560-dpll = refl

random-560-wsat :
  maybe-eval-sat ((Var 2) => (Var 3)) whole-sat
  ≡ just true
random-560-wsat = refl

random-561-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-561-dpll = refl

random-561-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-561-wsat = refl

random-562-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) => (¬ ((Var 3) => (Var 1)))) whole-DPLL
  ≡ just true
random-562-dpll = refl

random-562-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) => (¬ ((Var 3) => (Var 1)))) whole-sat
  ≡ just true
random-562-wsat = refl

random-563-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-563-dpll = refl

random-563-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-563-wsat = refl

random-564-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-564-dpll = refl

random-564-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ just true
random-564-wsat = refl

random-565-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∧ (Var 3)) => (¬ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-565-dpll = refl

random-565-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∧ (Var 3)) => (¬ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-565-wsat = refl

random-566-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 3) => (Var 2))) ∧ (¬ ((Var 4) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-566-dpll = refl

random-566-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 3) => (Var 2))) ∧ (¬ ((Var 4) ∧ (Var 4)))) whole-sat
  ≡ just true
random-566-wsat = refl

random-567-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 1))) => (((Var 2) => (Var 1)) => (Var 3))) whole-DPLL
  ≡ just true
random-567-dpll = refl

random-567-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∨ (Var 1))) => (((Var 2) => (Var 1)) => (Var 3))) whole-sat
  ≡ just true
random-567-wsat = refl

random-568-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-568-dpll = refl

random-568-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-568-wsat = refl

random-569-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-569-dpll = refl

random-569-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-569-wsat = refl

random-570-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 3)) ∨ ((Var 4) ∧ (Var 4))) => (¬ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-570-dpll = refl

random-570-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 3)) ∨ ((Var 4) ∧ (Var 4))) => (¬ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-570-wsat = refl

random-571-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) => (Var 2)) ∧ (((Var 2) => (Var 2)) => ((Var 3) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-571-dpll = refl

random-571-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) => (Var 2)) ∧ (((Var 2) => (Var 2)) => ((Var 3) ∨ (Var 4)))) whole-sat
  ≡ just true
random-571-wsat = refl

random-572-dpll :
  maybe-eval-sat (((¬ (Var 4)) => (Var 1)) ∧ (((Var 3) => (Var 2)) => ((Var 4) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-572-dpll = refl

random-572-wsat :
  maybe-eval-sat (((¬ (Var 4)) => (Var 1)) ∧ (((Var 3) => (Var 2)) => ((Var 4) ∧ (Var 4)))) whole-sat
  ≡ just true
random-572-wsat = refl

random-573-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-573-dpll = refl

random-573-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-573-wsat = refl

random-574-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 2))) => (Var 2)) whole-DPLL
  ≡ just true
random-574-dpll = refl

random-574-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 2))) => (Var 2)) whole-sat
  ≡ just true
random-574-wsat = refl

random-575-dpll :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∧ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-575-dpll = refl

random-575-wsat :
  maybe-eval-sat (¬ (((Var 3) ∧ (Var 3)) ∧ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-575-wsat = refl

random-576-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-576-dpll = refl

random-576-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-576-wsat = refl

random-577-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-577-dpll = refl

random-577-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-577-wsat = refl

random-578-dpll :
  maybe-eval-sat (¬ ((¬ (Var 4)) => ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-578-dpll = refl

random-578-wsat :
  maybe-eval-sat (¬ ((¬ (Var 4)) => ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-578-wsat = refl

random-579-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-579-dpll = refl

random-579-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-579-wsat = refl

random-580-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) => ((Var 1) ∨ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-580-dpll = refl

random-580-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 4))) => ((Var 1) ∨ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-580-wsat = refl

random-581-dpll :
  maybe-eval-sat ((((Var 3) => (Var 4)) ∨ (Var 4)) ∧ ((Var 3) ∨ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-581-dpll = refl

random-581-wsat :
  maybe-eval-sat ((((Var 3) => (Var 4)) ∨ (Var 4)) ∧ ((Var 3) ∨ ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-581-wsat = refl

random-582-dpll :
  maybe-eval-sat ((Var 4) ∨ (¬ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-582-dpll = refl

random-582-wsat :
  maybe-eval-sat ((Var 4) ∨ (¬ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-582-wsat = refl

random-583-dpll :
  maybe-eval-sat ((((Var 4) => (Var 3)) => ((Var 4) ∧ (Var 2))) ∧ ((¬ (Var 1)) ∨ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-583-dpll = refl

random-583-wsat :
  maybe-eval-sat ((((Var 4) => (Var 3)) => ((Var 4) ∧ (Var 2))) ∧ ((¬ (Var 1)) ∨ (¬ (Var 1)))) whole-sat
  ≡ just true
random-583-wsat = refl

random-584-dpll :
  maybe-eval-sat (¬ ((Var 1) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-584-dpll = refl

random-584-wsat :
  maybe-eval-sat (¬ ((Var 1) ∧ (Var 2))) whole-sat
  ≡ just true
random-584-wsat = refl

random-585-dpll :
  maybe-eval-sat ((((Var 4) => (Var 2)) => ((Var 3) ∨ (Var 2))) => ((Var 1) => ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-585-dpll = refl

random-585-wsat :
  maybe-eval-sat ((((Var 4) => (Var 2)) => ((Var 3) ∨ (Var 2))) => ((Var 1) => ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-585-wsat = refl

random-586-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-586-dpll = refl

random-586-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-586-wsat = refl

random-587-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 1))) ∨ (¬ (Var 3))) whole-DPLL
  ≡ just true
random-587-dpll = refl

random-587-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 1))) ∨ (¬ (Var 3))) whole-sat
  ≡ just true
random-587-wsat = refl

random-588-dpll :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 4))) ∧ (¬ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-588-dpll = refl

random-588-wsat :
  maybe-eval-sat (((¬ (Var 1)) => (¬ (Var 4))) ∧ (¬ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-588-wsat = refl

random-589-dpll :
  maybe-eval-sat (((Var 2) => (¬ (Var 1))) ∨ (((Var 3) => (Var 4)) ∧ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-589-dpll = refl

random-589-wsat :
  maybe-eval-sat (((Var 2) => (¬ (Var 1))) ∨ (((Var 3) => (Var 4)) ∧ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-589-wsat = refl

random-590-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∧ (Var 2)) ∨ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-590-dpll = refl

random-590-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∧ (Var 2)) ∨ (¬ (Var 4)))) whole-sat
  ≡ just true
random-590-wsat = refl

random-591-dpll :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 1) ∨ (Var 4))) => (Var 4)) whole-DPLL
  ≡ just true
random-591-dpll = refl

random-591-wsat :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 1) ∨ (Var 4))) => (Var 4)) whole-sat
  ≡ just true
random-591-wsat = refl

random-592-dpll :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) ∨ (Var 1)) ∨ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-592-dpll = refl

random-592-wsat :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) ∨ (Var 1)) ∨ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-592-wsat = refl

random-593-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∧ (Var 2)) ∧ (((Var 4) => (Var 4)) ∧ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-593-dpll = refl

random-593-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∧ (Var 2)) ∧ (((Var 4) => (Var 4)) ∧ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-593-wsat = refl

random-594-dpll :
  maybe-eval-sat ((Var 3) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-594-dpll = refl

random-594-wsat :
  maybe-eval-sat ((Var 3) ∨ (Var 1)) whole-sat
  ≡ just true
random-594-wsat = refl

random-595-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 3))) ∨ (¬ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-595-dpll = refl

random-595-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 3))) ∨ (¬ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ just true
random-595-wsat = refl

random-596-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) ∨ (¬ (Var 4))) ∧ ((¬ (Var 3)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-596-dpll = refl

random-596-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 2)) ∨ (¬ (Var 4))) ∧ ((¬ (Var 3)) ∧ (Var 2))) whole-sat
  ≡ just true
random-596-wsat = refl

random-597-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-597-dpll = refl

random-597-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-597-wsat = refl

random-598-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-598-dpll = refl

random-598-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-598-wsat = refl

random-599-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) => ((Var 4) ∧ (Var 2))) ∨ (((Var 4) ∧ (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-599-dpll = refl

random-599-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) => ((Var 4) ∧ (Var 2))) ∨ (((Var 4) ∧ (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-599-wsat = refl

random-600-dpll :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-600-dpll = refl

random-600-wsat :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-600-wsat = refl

random-601-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-601-dpll = refl

random-601-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-601-wsat = refl

random-602-dpll :
  maybe-eval-sat ((Var 2) => ((¬ (Var 3)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-602-dpll = refl

random-602-wsat :
  maybe-eval-sat ((Var 2) => ((¬ (Var 3)) ∧ (Var 1))) whole-sat
  ≡ just true
random-602-wsat = refl

random-603-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-603-dpll = refl

random-603-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-603-wsat = refl

random-604-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-604-dpll = refl

random-604-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-604-wsat = refl

random-605-dpll :
  maybe-eval-sat ((((Var 2) => (Var 3)) ∨ ((Var 2) ∨ (Var 2))) ∨ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-605-dpll = refl

random-605-wsat :
  maybe-eval-sat ((((Var 2) => (Var 3)) ∨ ((Var 2) ∨ (Var 2))) ∨ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-605-wsat = refl

random-606-dpll :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 4)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-606-dpll = refl

random-606-wsat :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 4)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-606-wsat = refl

random-607-dpll :
  maybe-eval-sat (((Var 4) => (Var 3)) ∨ ((Var 1) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-607-dpll = refl

random-607-wsat :
  maybe-eval-sat (((Var 4) => (Var 3)) ∨ ((Var 1) ∧ (Var 4))) whole-sat
  ≡ just true
random-607-wsat = refl

random-608-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-608-dpll = refl

random-608-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-608-wsat = refl

random-609-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-609-dpll = refl

random-609-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-609-wsat = refl

random-610-dpll :
  maybe-eval-sat ((Var 1) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-610-dpll = refl

random-610-wsat :
  maybe-eval-sat ((Var 1) ∨ (Var 4)) whole-sat
  ≡ just true
random-610-wsat = refl

random-611-dpll :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 4) => (Var 1))) => (((Var 1) => (Var 3)) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-611-dpll = refl

random-611-wsat :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 4) => (Var 1))) => (((Var 1) => (Var 3)) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-611-wsat = refl

random-612-dpll :
  maybe-eval-sat (((Var 2) ∨ (Var 3)) => ((¬ (Var 1)) ∨ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-612-dpll = refl

random-612-wsat :
  maybe-eval-sat (((Var 2) ∨ (Var 3)) => ((¬ (Var 1)) ∨ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-612-wsat = refl

random-613-dpll :
  maybe-eval-sat (((Var 3) => ((Var 2) ∨ (Var 1))) => (Var 4)) whole-DPLL
  ≡ just true
random-613-dpll = refl

random-613-wsat :
  maybe-eval-sat (((Var 3) => ((Var 2) ∨ (Var 1))) => (Var 4)) whole-sat
  ≡ just true
random-613-wsat = refl

random-614-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) => (¬ (Var 2))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-614-dpll = refl

random-614-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) => (¬ (Var 2))) ∨ (Var 2)) whole-sat
  ≡ just true
random-614-wsat = refl

random-615-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-615-dpll = refl

random-615-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 1)))) whole-sat
  ≡ just true
random-615-wsat = refl

random-616-dpll :
  maybe-eval-sat (((Var 2) ∧ ((Var 4) => (Var 2))) ∧ ((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-616-dpll = refl

random-616-wsat :
  maybe-eval-sat (((Var 2) ∧ ((Var 4) => (Var 2))) ∧ ((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 2)))) whole-sat
  ≡ just true
random-616-wsat = refl

random-617-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-617-dpll = refl

random-617-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-617-wsat = refl

random-618-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-618-dpll = refl

random-618-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-618-wsat = refl

random-619-dpll :
  maybe-eval-sat (((Var 4) => ((Var 4) ∨ (Var 3))) ∧ (((Var 1) => (Var 2)) => (Var 3))) whole-DPLL
  ≡ just true
random-619-dpll = refl

random-619-wsat :
  maybe-eval-sat (((Var 4) => ((Var 4) ∨ (Var 3))) ∧ (((Var 1) => (Var 2)) => (Var 3))) whole-sat
  ≡ just true
random-619-wsat = refl

random-620-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 4)) ∨ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ nothing
random-620-dpll = refl

random-620-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 4)) ∨ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ nothing
random-620-wsat = refl

random-621-dpll :
  maybe-eval-sat ((Var 2) ∧ (((Var 1) => (Var 4)) => ((Var 3) => (Var 3)))) whole-DPLL
  ≡ just true
random-621-dpll = refl

random-621-wsat :
  maybe-eval-sat ((Var 2) ∧ (((Var 1) => (Var 4)) => ((Var 3) => (Var 3)))) whole-sat
  ≡ just true
random-621-wsat = refl

random-622-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-622-dpll = refl

random-622-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-622-wsat = refl

random-623-dpll :
  maybe-eval-sat ((Var 4) ∧ ((Var 3) ∨ (Var 2))) whole-DPLL
  ≡ just true
random-623-dpll = refl

random-623-wsat :
  maybe-eval-sat ((Var 4) ∧ ((Var 3) ∨ (Var 2))) whole-sat
  ≡ just true
random-623-wsat = refl

random-624-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 4) => (Var 1))) ∧ ((Var 2) ∧ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-624-dpll = refl

random-624-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 4) => (Var 1))) ∧ ((Var 2) ∧ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-624-wsat = refl

random-625-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 3))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-625-dpll = refl

random-625-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∧ (Var 3))) ∨ (Var 2)) whole-sat
  ≡ just true
random-625-wsat = refl

random-626-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-626-dpll = refl

random-626-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-626-wsat = refl

random-627-dpll :
  maybe-eval-sat (((Var 4) => ((Var 1) ∧ (Var 4))) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-627-dpll = refl

random-627-wsat :
  maybe-eval-sat (((Var 4) => ((Var 1) ∧ (Var 4))) ∨ (Var 1)) whole-sat
  ≡ just true
random-627-wsat = refl

random-628-dpll :
  maybe-eval-sat (((Var 1) => ((Var 2) ∨ (Var 2))) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-628-dpll = refl

random-628-wsat :
  maybe-eval-sat (((Var 1) => ((Var 2) ∨ (Var 2))) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-628-wsat = refl

random-629-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) => (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-629-dpll = refl

random-629-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 2))) => (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-629-wsat = refl

random-630-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-630-dpll = refl

random-630-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 2))) ∨ (Var 4)) whole-sat
  ≡ just true
random-630-wsat = refl

random-631-dpll :
  maybe-eval-sat (((Var 3) => ((Var 4) ∧ (Var 1))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-631-dpll = refl

random-631-wsat :
  maybe-eval-sat (((Var 3) => ((Var 4) ∧ (Var 1))) ∨ (Var 3)) whole-sat
  ≡ just true
random-631-wsat = refl

random-632-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-632-dpll = refl

random-632-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-632-wsat = refl

random-633-dpll :
  maybe-eval-sat (((Var 1) ∧ ((Var 1) ∧ (Var 2))) => (((Var 1) ∧ (Var 4)) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-633-dpll = refl

random-633-wsat :
  maybe-eval-sat (((Var 1) ∧ ((Var 1) ∧ (Var 2))) => (((Var 1) ∧ (Var 4)) ∧ (Var 3))) whole-sat
  ≡ just true
random-633-wsat = refl

random-634-dpll :
  maybe-eval-sat ((Var 2) => ((Var 2) => ((Var 2) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-634-dpll = refl

random-634-wsat :
  maybe-eval-sat ((Var 2) => ((Var 2) => ((Var 2) ∧ (Var 4)))) whole-sat
  ≡ just true
random-634-wsat = refl

random-635-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∨ (¬ (Var 2))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-635-dpll = refl

random-635-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 3)) ∨ (¬ (Var 2))) ∨ (Var 4)) whole-sat
  ≡ just true
random-635-wsat = refl

random-636-dpll :
  maybe-eval-sat ((Var 4) ∧ ((Var 1) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-636-dpll = refl

random-636-wsat :
  maybe-eval-sat ((Var 4) ∧ ((Var 1) ∧ (Var 1))) whole-sat
  ≡ just true
random-636-wsat = refl

random-637-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-637-dpll = refl

random-637-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-637-wsat = refl

random-638-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-638-dpll = refl

random-638-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-638-wsat = refl

random-639-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-639-dpll = refl

random-639-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-639-wsat = refl

random-640-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-640-dpll = refl

random-640-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-640-wsat = refl

random-641-dpll :
  maybe-eval-sat (¬ ((Var 1) ∨ ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-641-dpll = refl

random-641-wsat :
  maybe-eval-sat (¬ ((Var 1) ∨ ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-641-wsat = refl

random-642-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-642-dpll = refl

random-642-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-642-wsat = refl

random-643-dpll :
  maybe-eval-sat ((Var 1) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-643-dpll = refl

random-643-wsat :
  maybe-eval-sat ((Var 1) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-643-wsat = refl

random-644-dpll :
  maybe-eval-sat ((¬ (Var 4)) ∨ ((Var 3) ∨ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-644-dpll = refl

random-644-wsat :
  maybe-eval-sat ((¬ (Var 4)) ∨ ((Var 3) ∨ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-644-wsat = refl

random-645-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-645-dpll = refl

random-645-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ (Var 3)) whole-sat
  ≡ just true
random-645-wsat = refl

random-646-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-646-dpll = refl

random-646-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-646-wsat = refl

random-647-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) => ((Var 3) ∨ (Var 2))) ∧ ((¬ (Var 2)) => ((Var 2) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-647-dpll = refl

random-647-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) => ((Var 3) ∨ (Var 2))) ∧ ((¬ (Var 2)) => ((Var 2) ∨ (Var 4)))) whole-sat
  ≡ just true
random-647-wsat = refl

random-648-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 1)) ∨ ((Var 4) ∨ (Var 2)))) whole-DPLL
  ≡ nothing
random-648-dpll = refl

random-648-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 1)) ∨ ((Var 4) ∨ (Var 2)))) whole-sat
  ≡ nothing
random-648-wsat = refl

random-649-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-649-dpll = refl

random-649-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-649-wsat = refl

random-650-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 1))) => (((Var 4) => (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-650-dpll = refl

random-650-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 1) ∨ (Var 1))) => (((Var 4) => (Var 2)) ∨ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-650-wsat = refl

random-651-dpll :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 3) ∨ (Var 3))) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-651-dpll = refl

random-651-wsat :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 3) ∨ (Var 3))) ∧ (Var 4)) whole-sat
  ≡ just true
random-651-wsat = refl

random-652-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 1)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-652-dpll = refl

random-652-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 1)) ∨ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-652-wsat = refl

random-653-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∨ ((Var 4) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-653-dpll = refl

random-653-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) ∨ ((Var 4) ∨ (Var 4)))) whole-sat
  ≡ just true
random-653-wsat = refl

random-654-dpll :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 1)) ∨ ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-654-dpll = refl

random-654-wsat :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 1)) ∨ ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-654-wsat = refl

random-655-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-655-dpll = refl

random-655-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-655-wsat = refl

random-656-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 3))) => (¬ ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-656-dpll = refl

random-656-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 3))) => (¬ ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-656-wsat = refl

random-657-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 3) ∧ (Var 4))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-657-dpll = refl

random-657-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 3) ∧ (Var 4))) ∨ (Var 3)) whole-sat
  ≡ just true
random-657-wsat = refl

random-658-dpll :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 1) ∨ (Var 4))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-658-dpll = refl

random-658-wsat :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 1) ∨ (Var 4))) ∧ (Var 2)) whole-sat
  ≡ just true
random-658-wsat = refl

random-659-dpll :
  maybe-eval-sat ((((Var 1) => (Var 4)) => ((Var 3) ∧ (Var 2))) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-659-dpll = refl

random-659-wsat :
  maybe-eval-sat ((((Var 1) => (Var 4)) => ((Var 3) ∧ (Var 2))) ∨ (Var 1)) whole-sat
  ≡ just true
random-659-wsat = refl

random-660-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-660-dpll = refl

random-660-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-660-wsat = refl

random-661-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-661-dpll = refl

random-661-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-661-wsat = refl

random-662-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-662-dpll = refl

random-662-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-662-wsat = refl

random-663-dpll :
  maybe-eval-sat (((Var 1) => ((Var 1) ∧ (Var 2))) ∨ (¬ (Var 1))) whole-DPLL
  ≡ just true
random-663-dpll = refl

random-663-wsat :
  maybe-eval-sat (((Var 1) => ((Var 1) ∧ (Var 2))) ∨ (¬ (Var 1))) whole-sat
  ≡ just true
random-663-wsat = refl

random-664-dpll :
  maybe-eval-sat ((Var 1) => (¬ ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-664-dpll = refl

random-664-wsat :
  maybe-eval-sat ((Var 1) => (¬ ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-664-wsat = refl

random-665-dpll :
  maybe-eval-sat ((Var 4) ∧ (((Var 3) ∧ (Var 1)) => ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-665-dpll = refl

random-665-wsat :
  maybe-eval-sat ((Var 4) ∧ (((Var 3) ∧ (Var 1)) => ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-665-wsat = refl

random-666-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-666-dpll = refl

random-666-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-666-wsat = refl

random-667-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∨ ((Var 3) => (Var 3))) ∧ (¬ (Var 1))) whole-DPLL
  ≡ just true
random-667-dpll = refl

random-667-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) ∨ ((Var 3) => (Var 3))) ∧ (¬ (Var 1))) whole-sat
  ≡ just true
random-667-wsat = refl

random-668-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-668-dpll = refl

random-668-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-668-wsat = refl

random-669-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-669-dpll = refl

random-669-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-669-wsat = refl

random-670-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-670-dpll = refl

random-670-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-670-wsat = refl

random-671-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 4) ∨ (Var 3))) => ((¬ (Var 1)) ∧ ((Var 4) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-671-dpll = refl

random-671-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 4) ∨ (Var 3))) => ((¬ (Var 1)) ∧ ((Var 4) ∧ (Var 4)))) whole-sat
  ≡ just true
random-671-wsat = refl

random-672-dpll :
  maybe-eval-sat ((Var 4) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-672-dpll = refl

random-672-wsat :
  maybe-eval-sat ((Var 4) ∧ (Var 3)) whole-sat
  ≡ just true
random-672-wsat = refl

random-673-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-673-dpll = refl

random-673-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-673-wsat = refl

random-674-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-674-dpll = refl

random-674-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-674-wsat = refl

random-675-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 3)) => ((Var 1) => (Var 2)))) whole-DPLL
  ≡ nothing
random-675-dpll = refl

random-675-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 3)) => ((Var 1) => (Var 2)))) whole-sat
  ≡ nothing
random-675-wsat = refl

random-676-dpll :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) => (Var 3))) whole-DPLL
  ≡ just true
random-676-dpll = refl

random-676-wsat :
  maybe-eval-sat (¬ (((Var 1) => (Var 1)) => (Var 3))) whole-sat
  ≡ just true
random-676-wsat = refl

random-677-dpll :
  maybe-eval-sat ((Var 1) => ((¬ (Var 2)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-677-dpll = refl

random-677-wsat :
  maybe-eval-sat ((Var 1) => ((¬ (Var 2)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-677-wsat = refl

random-678-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-678-dpll = refl

random-678-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-678-wsat = refl

random-679-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-679-dpll = refl

random-679-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-679-wsat = refl

random-680-dpll :
  maybe-eval-sat (((Var 3) ∧ (Var 3)) ∧ (((Var 3) ∧ (Var 2)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-680-dpll = refl

random-680-wsat :
  maybe-eval-sat (((Var 3) ∧ (Var 3)) ∧ (((Var 3) ∧ (Var 2)) ∧ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-680-wsat = refl

random-681-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-681-dpll = refl

random-681-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-681-wsat = refl

random-682-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-682-dpll = refl

random-682-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-682-wsat = refl

random-683-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∨ ((Var 2) ∧ (Var 4))) ∨ (((Var 2) => (Var 4)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-683-dpll = refl

random-683-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∨ ((Var 2) ∧ (Var 4))) ∨ (((Var 2) => (Var 4)) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-683-wsat = refl

random-684-dpll :
  maybe-eval-sat ((Var 4) ∧ ((Var 1) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-684-dpll = refl

random-684-wsat :
  maybe-eval-sat ((Var 4) ∧ ((Var 1) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-684-wsat = refl

random-685-dpll :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 4)) ∨ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ nothing
random-685-dpll = refl

random-685-wsat :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 4)) ∨ ((Var 3) => (Var 2)))) whole-sat
  ≡ nothing
random-685-wsat = refl

random-686-dpll :
  maybe-eval-sat ((¬ (Var 4)) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-686-dpll = refl

random-686-wsat :
  maybe-eval-sat ((¬ (Var 4)) ∧ (Var 3)) whole-sat
  ≡ just true
random-686-wsat = refl

random-687-dpll :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-687-dpll = refl

random-687-wsat :
  maybe-eval-sat (¬ ((Var 1) ∧ ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-687-wsat = refl

random-688-dpll :
  maybe-eval-sat ((Var 1) => ((Var 2) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-688-dpll = refl

random-688-wsat :
  maybe-eval-sat ((Var 1) => ((Var 2) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-688-wsat = refl

random-689-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 2)) ∧ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-689-dpll = refl

random-689-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 2)) ∧ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-689-wsat = refl

random-690-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) => ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-690-dpll = refl

random-690-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 3)) => ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-690-wsat = refl

random-691-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 1))) ∨ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-691-dpll = refl

random-691-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 1))) ∨ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-691-wsat = refl

random-692-dpll :
  maybe-eval-sat (¬ (Var 2)) whole-DPLL
  ≡ just true
random-692-dpll = refl

random-692-wsat :
  maybe-eval-sat (¬ (Var 2)) whole-sat
  ≡ just true
random-692-wsat = refl

random-693-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 1))) => (Var 3)) whole-DPLL
  ≡ just true
random-693-dpll = refl

random-693-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 1))) => (Var 3)) whole-sat
  ≡ just true
random-693-wsat = refl

random-694-dpll :
  maybe-eval-sat ((Var 1) ∨ (((Var 2) ∧ (Var 4)) ∨ ((Var 1) => (Var 3)))) whole-DPLL
  ≡ just true
random-694-dpll = refl

random-694-wsat :
  maybe-eval-sat ((Var 1) ∨ (((Var 2) ∧ (Var 4)) ∨ ((Var 1) => (Var 3)))) whole-sat
  ≡ just true
random-694-wsat = refl

random-695-dpll :
  maybe-eval-sat (¬ ((¬ (Var 1)) => (Var 2))) whole-DPLL
  ≡ just true
random-695-dpll = refl

random-695-wsat :
  maybe-eval-sat (¬ ((¬ (Var 1)) => (Var 2))) whole-sat
  ≡ just true
random-695-wsat = refl

random-696-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∨ (Var 1)) => ((¬ (Var 2)) ∧ ((Var 1) => (Var 4)))) whole-DPLL
  ≡ just true
random-696-dpll = refl

random-696-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 2)) ∨ (Var 1)) => ((¬ (Var 2)) ∧ ((Var 1) => (Var 4)))) whole-sat
  ≡ just true
random-696-wsat = refl

random-697-dpll :
  maybe-eval-sat ((((Var 4) => (Var 4)) => (Var 1)) => (((Var 1) => (Var 1)) => ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-697-dpll = refl

random-697-wsat :
  maybe-eval-sat ((((Var 4) => (Var 4)) => (Var 1)) => (((Var 1) => (Var 1)) => ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-697-wsat = refl

random-698-dpll :
  maybe-eval-sat ((Var 4) => (¬ ((Var 3) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-698-dpll = refl

random-698-wsat :
  maybe-eval-sat ((Var 4) => (¬ ((Var 3) ∨ (Var 4)))) whole-sat
  ≡ just true
random-698-wsat = refl

random-699-dpll :
  maybe-eval-sat ((Var 2) => ((Var 4) => (Var 3))) whole-DPLL
  ≡ just true
random-699-dpll = refl

random-699-wsat :
  maybe-eval-sat ((Var 2) => ((Var 4) => (Var 3))) whole-sat
  ≡ just true
random-699-wsat = refl

random-700-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∧ ((Var 2) ∨ (Var 4))) => (¬ ((Var 1) => (Var 1)))) whole-DPLL
  ≡ just true
random-700-dpll = refl

random-700-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∧ ((Var 2) ∨ (Var 4))) => (¬ ((Var 1) => (Var 1)))) whole-sat
  ≡ just true
random-700-wsat = refl

random-701-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 2)) ∨ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-701-dpll = refl

random-701-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 2)) ∨ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-701-wsat = refl

random-702-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-702-dpll = refl

random-702-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-702-wsat = refl

random-703-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∨ ((Var 2) => (Var 1))) ∨ ((¬ (Var 4)) ∨ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-703-dpll = refl

random-703-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 4)) ∨ ((Var 2) => (Var 1))) ∨ ((¬ (Var 4)) ∨ (¬ (Var 4)))) whole-sat
  ≡ just true
random-703-wsat = refl

random-704-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-704-dpll = refl

random-704-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-704-wsat = refl

random-705-dpll :
  maybe-eval-sat ((Var 3) => (¬ (Var 2))) whole-DPLL
  ≡ just true
random-705-dpll = refl

random-705-wsat :
  maybe-eval-sat ((Var 3) => (¬ (Var 2))) whole-sat
  ≡ just true
random-705-wsat = refl

random-706-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-706-dpll = refl

random-706-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-706-wsat = refl

random-707-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 4)) ∨ ((Var 4) => (Var 3)))) whole-DPLL
  ≡ nothing
random-707-dpll = refl

random-707-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 4)) ∨ ((Var 4) => (Var 3)))) whole-sat
  ≡ nothing
random-707-wsat = refl

random-708-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 1)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-708-dpll = refl

random-708-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 1)) ∧ (Var 4))) whole-sat
  ≡ just true
random-708-wsat = refl

random-709-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) => ((Var 2) ∧ (Var 1))) ∨ ((Var 1) ∨ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-709-dpll = refl

random-709-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) => ((Var 2) ∧ (Var 1))) ∨ ((Var 1) ∨ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-709-wsat = refl

random-710-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-710-dpll = refl

random-710-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-710-wsat = refl

random-711-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∧ ((Var 4) ∧ (Var 3))) => (((Var 3) => (Var 1)) => (Var 2))) whole-DPLL
  ≡ just true
random-711-dpll = refl

random-711-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 4)) ∧ ((Var 4) ∧ (Var 3))) => (((Var 3) => (Var 1)) => (Var 2))) whole-sat
  ≡ just true
random-711-wsat = refl

random-712-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-712-dpll = refl

random-712-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-712-wsat = refl

random-713-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-713-dpll = refl

random-713-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-713-wsat = refl

random-714-dpll :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 3)) => ((Var 2) => (Var 3)))) whole-DPLL
  ≡ nothing
random-714-dpll = refl

random-714-wsat :
  maybe-eval-sat (¬ (((Var 1) ∧ (Var 3)) => ((Var 2) => (Var 3)))) whole-sat
  ≡ nothing
random-714-wsat = refl

random-715-dpll :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) => (Var 4)) ∧ ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-715-dpll = refl

random-715-wsat :
  maybe-eval-sat ((Var 1) ∧ (((Var 1) => (Var 4)) ∧ ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-715-wsat = refl

random-716-dpll :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-716-dpll = refl

random-716-wsat :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 2)))) whole-sat
  ≡ just true
random-716-wsat = refl

random-717-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-717-dpll = refl

random-717-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-717-wsat = refl

random-718-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-718-dpll = refl

random-718-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-718-wsat = refl

random-719-dpll :
  maybe-eval-sat (((¬ (Var 4)) => ((Var 4) => (Var 2))) ∨ (((Var 1) => (Var 3)) ∨ ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-719-dpll = refl

random-719-wsat :
  maybe-eval-sat (((¬ (Var 4)) => ((Var 4) => (Var 2))) ∨ (((Var 1) => (Var 3)) ∨ ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-719-wsat = refl

random-720-dpll :
  maybe-eval-sat ((Var 3) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-720-dpll = refl

random-720-wsat :
  maybe-eval-sat ((Var 3) ∧ (Var 3)) whole-sat
  ≡ just true
random-720-wsat = refl

random-721-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-721-dpll = refl

random-721-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-721-wsat = refl

random-722-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 3))) => ((Var 3) ∨ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-722-dpll = refl

random-722-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 3) ∨ (Var 3))) => ((Var 3) ∨ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-722-wsat = refl

random-723-dpll :
  maybe-eval-sat (((¬ (Var 2)) => (¬ (Var 3))) => (((Var 1) ∨ (Var 4)) ∧ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-723-dpll = refl

random-723-wsat :
  maybe-eval-sat (((¬ (Var 2)) => (¬ (Var 3))) => (((Var 1) ∨ (Var 4)) ∧ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-723-wsat = refl

random-724-dpll :
  maybe-eval-sat ((Var 1) ∧ ((Var 3) ∨ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-724-dpll = refl

random-724-wsat :
  maybe-eval-sat ((Var 1) ∧ ((Var 3) ∨ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-724-wsat = refl

random-725-dpll :
  maybe-eval-sat ((¬ (Var 1)) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-725-dpll = refl

random-725-wsat :
  maybe-eval-sat ((¬ (Var 1)) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-725-wsat = refl

random-726-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 1))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-726-dpll = refl

random-726-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 1))) ∨ (Var 3)) whole-sat
  ≡ just true
random-726-wsat = refl

random-727-dpll :
  maybe-eval-sat (((Var 1) ∧ ((Var 2) ∧ (Var 3))) ∨ (((Var 3) ∨ (Var 3)) ∧ ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-727-dpll = refl

random-727-wsat :
  maybe-eval-sat (((Var 1) ∧ ((Var 2) ∧ (Var 3))) ∨ (((Var 3) ∨ (Var 3)) ∧ ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-727-wsat = refl

random-728-dpll :
  maybe-eval-sat ((¬ ((Var 1) => (Var 4))) ∨ (¬ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-728-dpll = refl

random-728-wsat :
  maybe-eval-sat ((¬ ((Var 1) => (Var 4))) ∨ (¬ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-728-wsat = refl

random-729-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-729-dpll = refl

random-729-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-729-wsat = refl

random-730-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-730-dpll = refl

random-730-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-730-wsat = refl

random-731-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-731-dpll = refl

random-731-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-731-wsat = refl

random-732-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-732-dpll = refl

random-732-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-732-wsat = refl

random-733-dpll :
  maybe-eval-sat ((((Var 1) => (Var 2)) ∧ ((Var 1) ∨ (Var 4))) ∨ (((Var 4) ∧ (Var 3)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-733-dpll = refl

random-733-wsat :
  maybe-eval-sat ((((Var 1) => (Var 2)) ∧ ((Var 1) ∨ (Var 4))) ∨ (((Var 4) ∧ (Var 3)) ∧ (Var 2))) whole-sat
  ≡ just true
random-733-wsat = refl

random-734-dpll :
  maybe-eval-sat (((Var 4) ∧ ((Var 2) => (Var 4))) ∨ ((¬ (Var 3)) ∨ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-734-dpll = refl

random-734-wsat :
  maybe-eval-sat (((Var 4) ∧ ((Var 2) => (Var 4))) ∨ ((¬ (Var 3)) ∨ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-734-wsat = refl

random-735-dpll :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-735-dpll = refl

random-735-wsat :
  maybe-eval-sat ((Var 2) ∧ (¬ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-735-wsat = refl

random-736-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∨ (Var 4))) ∧ (((Var 1) ∨ (Var 1)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-736-dpll = refl

random-736-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) ∨ (Var 4))) ∧ (((Var 1) ∨ (Var 1)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-736-wsat = refl

random-737-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-737-dpll = refl

random-737-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-737-wsat = refl

random-738-dpll :
  maybe-eval-sat ((Var 3) => ((Var 4) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-738-dpll = refl

random-738-wsat :
  maybe-eval-sat ((Var 3) => ((Var 4) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-738-wsat = refl

random-739-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∨ ((Var 3) => (Var 3))) ∨ ((Var 4) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-739-dpll = refl

random-739-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∨ ((Var 3) => (Var 3))) ∨ ((Var 4) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-739-wsat = refl

random-740-dpll :
  maybe-eval-sat (¬ ((Var 4) ∧ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-740-dpll = refl

random-740-wsat :
  maybe-eval-sat (¬ ((Var 4) ∧ (¬ (Var 3)))) whole-sat
  ≡ just true
random-740-wsat = refl

random-741-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-741-dpll = refl

random-741-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-741-wsat = refl

random-742-dpll :
  maybe-eval-sat ((Var 2) => (((Var 4) => (Var 3)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-742-dpll = refl

random-742-wsat :
  maybe-eval-sat ((Var 2) => (((Var 4) => (Var 3)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-742-wsat = refl

random-743-dpll :
  maybe-eval-sat ((Var 1) => (¬ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-743-dpll = refl

random-743-wsat :
  maybe-eval-sat ((Var 1) => (¬ (¬ (Var 1)))) whole-sat
  ≡ just true
random-743-wsat = refl

random-744-dpll :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 4)) => ((Var 2) => (Var 2)))) whole-DPLL
  ≡ nothing
random-744-dpll = refl

random-744-wsat :
  maybe-eval-sat (¬ (((Var 2) ∨ (Var 4)) => ((Var 2) => (Var 2)))) whole-sat
  ≡ nothing
random-744-wsat = refl

random-745-dpll :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) ∨ (Var 3)) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-745-dpll = refl

random-745-wsat :
  maybe-eval-sat ((Var 3) ∧ (((Var 3) ∨ (Var 3)) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-745-wsat = refl

random-746-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-746-dpll = refl

random-746-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-746-wsat = refl

random-747-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-747-dpll = refl

random-747-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-747-wsat = refl

random-748-dpll :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-DPLL
  ≡ just true
random-748-dpll = refl

random-748-wsat :
  maybe-eval-sat ((Var 3) => (Var 1)) whole-sat
  ≡ just true
random-748-wsat = refl

random-749-dpll :
  maybe-eval-sat ((¬ (¬ (Var 3))) => ((Var 1) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-749-dpll = refl

random-749-wsat :
  maybe-eval-sat ((¬ (¬ (Var 3))) => ((Var 1) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-749-wsat = refl

random-750-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-750-dpll = refl

random-750-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-750-wsat = refl

random-751-dpll :
  maybe-eval-sat ((¬ ((Var 1) => (Var 3))) => (¬ ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-751-dpll = refl

random-751-wsat :
  maybe-eval-sat ((¬ ((Var 1) => (Var 3))) => (¬ ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ just true
random-751-wsat = refl

random-752-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) => ((Var 3) => (Var 1))) ∨ (¬ ((Var 1) => (Var 1)))) whole-DPLL
  ≡ just true
random-752-dpll = refl

random-752-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 2)) => ((Var 3) => (Var 1))) ∨ (¬ ((Var 1) => (Var 1)))) whole-sat
  ≡ just true
random-752-wsat = refl

random-753-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) => (Var 3))) whole-DPLL
  ≡ nothing
random-753-dpll = refl

random-753-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) => (Var 3))) whole-sat
  ≡ nothing
random-753-wsat = refl

random-754-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 1) => (Var 4))) ∨ (((Var 2) ∨ (Var 3)) => (Var 2))) whole-DPLL
  ≡ just true
random-754-dpll = refl

random-754-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 1) => (Var 4))) ∨ (((Var 2) ∨ (Var 3)) => (Var 2))) whole-sat
  ≡ just true
random-754-wsat = refl

random-755-dpll :
  maybe-eval-sat (((¬ (Var 3)) => (Var 1)) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-755-dpll = refl

random-755-wsat :
  maybe-eval-sat (((¬ (Var 3)) => (Var 1)) ∨ (¬ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-755-wsat = refl

random-756-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-756-dpll = refl

random-756-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-756-wsat = refl

random-757-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-757-dpll = refl

random-757-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-757-wsat = refl

random-758-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 2))) => (Var 3)) whole-DPLL
  ≡ just true
random-758-dpll = refl

random-758-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) ∧ ((Var 3) ∨ (Var 2))) => (Var 3)) whole-sat
  ≡ just true
random-758-wsat = refl

random-759-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => (Var 2))) whole-DPLL
  ≡ just true
random-759-dpll = refl

random-759-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 4)) => (Var 2))) whole-sat
  ≡ just true
random-759-wsat = refl

random-760-dpll :
  maybe-eval-sat ((Var 1) ∧ ((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ nothing
random-760-dpll = refl

random-760-wsat :
  maybe-eval-sat ((Var 1) ∧ ((¬ (Var 3)) ∧ ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ nothing
random-760-wsat = refl

random-761-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-761-dpll = refl

random-761-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-761-wsat = refl

random-762-dpll :
  maybe-eval-sat ((¬ (¬ (Var 2))) => ((¬ (Var 1)) => ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-762-dpll = refl

random-762-wsat :
  maybe-eval-sat ((¬ (¬ (Var 2))) => ((¬ (Var 1)) => ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-762-wsat = refl

random-763-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 2))) ∧ (((Var 2) => (Var 3)) => ((Var 2) => (Var 1)))) whole-DPLL
  ≡ just true
random-763-dpll = refl

random-763-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 2))) ∧ (((Var 2) => (Var 3)) => ((Var 2) => (Var 1)))) whole-sat
  ≡ just true
random-763-wsat = refl

random-764-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => (Var 2)) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-764-dpll = refl

random-764-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) => (Var 2)) ∨ (Var 4)) whole-sat
  ≡ just true
random-764-wsat = refl

random-765-dpll :
  maybe-eval-sat ((Var 2) => (Var 1)) whole-DPLL
  ≡ just true
random-765-dpll = refl

random-765-wsat :
  maybe-eval-sat ((Var 2) => (Var 1)) whole-sat
  ≡ just true
random-765-wsat = refl

random-766-dpll :
  maybe-eval-sat (¬ (¬ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-766-dpll = refl

random-766-wsat :
  maybe-eval-sat (¬ (¬ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-766-wsat = refl

random-767-dpll :
  maybe-eval-sat ((Var 3) ∧ ((Var 2) => (Var 2))) whole-DPLL
  ≡ just true
random-767-dpll = refl

random-767-wsat :
  maybe-eval-sat ((Var 3) ∧ ((Var 2) => (Var 2))) whole-sat
  ≡ just true
random-767-wsat = refl

random-768-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 1)) ∨ ((Var 1) ∨ (Var 4))) ∧ (((Var 3) ∧ (Var 3)) ∧ ((Var 4) => (Var 1)))) whole-DPLL
  ≡ just true
random-768-dpll = refl

random-768-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 1)) ∨ ((Var 1) ∨ (Var 4))) ∧ (((Var 3) ∧ (Var 3)) ∧ ((Var 4) => (Var 1)))) whole-sat
  ≡ just true
random-768-wsat = refl

random-769-dpll :
  maybe-eval-sat ((¬ (Var 4)) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-769-dpll = refl

random-769-wsat :
  maybe-eval-sat ((¬ (Var 4)) ∨ (Var 2)) whole-sat
  ≡ just true
random-769-wsat = refl

random-770-dpll :
  maybe-eval-sat ((Var 2) => (¬ (Var 1))) whole-DPLL
  ≡ just true
random-770-dpll = refl

random-770-wsat :
  maybe-eval-sat ((Var 2) => (¬ (Var 1))) whole-sat
  ≡ just true
random-770-wsat = refl

random-771-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-771-dpll = refl

random-771-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-771-wsat = refl

random-772-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-772-dpll = refl

random-772-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-772-wsat = refl

random-773-dpll :
  maybe-eval-sat ((Var 4) => ((Var 4) ∧ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-773-dpll = refl

random-773-wsat :
  maybe-eval-sat ((Var 4) => ((Var 4) ∧ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-773-wsat = refl

random-774-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-774-dpll = refl

random-774-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-774-wsat = refl

random-775-dpll :
  maybe-eval-sat ((¬ (Var 1)) ∨ (¬ ((Var 4) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-775-dpll = refl

random-775-wsat :
  maybe-eval-sat ((¬ (Var 1)) ∨ (¬ ((Var 4) ∧ (Var 1)))) whole-sat
  ≡ just true
random-775-wsat = refl

random-776-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) => (Var 1))) ∨ (¬ ((Var 1) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-776-dpll = refl

random-776-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) => (Var 1))) ∨ (¬ ((Var 1) ∧ (Var 1)))) whole-sat
  ≡ just true
random-776-wsat = refl

random-777-dpll :
  maybe-eval-sat ((¬ (Var 1)) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-777-dpll = refl

random-777-wsat :
  maybe-eval-sat ((¬ (Var 1)) ∨ (Var 3)) whole-sat
  ≡ just true
random-777-wsat = refl

random-778-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-778-dpll = refl

random-778-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-778-wsat = refl

random-779-dpll :
  maybe-eval-sat ((((Var 4) => (Var 1)) ∨ ((Var 2) ∧ (Var 3))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-779-dpll = refl

random-779-wsat :
  maybe-eval-sat ((((Var 4) => (Var 1)) ∨ ((Var 2) ∧ (Var 3))) ∨ (Var 3)) whole-sat
  ≡ just true
random-779-wsat = refl

random-780-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-780-dpll = refl

random-780-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-780-wsat = refl

random-781-dpll :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-781-dpll = refl

random-781-wsat :
  maybe-eval-sat (¬ (((Var 4) ∧ (Var 3)) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-781-wsat = refl

random-782-dpll :
  maybe-eval-sat ((((Var 3) => (Var 1)) ∧ (Var 1)) ∧ (¬ ((Var 3) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-782-dpll = refl

random-782-wsat :
  maybe-eval-sat ((((Var 3) => (Var 1)) ∧ (Var 1)) ∧ (¬ ((Var 3) ∧ (Var 1)))) whole-sat
  ≡ just true
random-782-wsat = refl

random-783-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) => (Var 4)) => ((Var 4) => (Var 3)))) whole-DPLL
  ≡ just true
random-783-dpll = refl

random-783-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 2) => (Var 4)) => ((Var 4) => (Var 3)))) whole-sat
  ≡ just true
random-783-wsat = refl

random-784-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 1))) ∧ (Var 3)) whole-DPLL
  ≡ nothing
random-784-dpll = refl

random-784-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 1))) ∧ (Var 3)) whole-sat
  ≡ nothing
random-784-wsat = refl

random-785-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-785-dpll = refl

random-785-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-785-wsat = refl

random-786-dpll :
  maybe-eval-sat (¬ ((Var 1) => (Var 1))) whole-DPLL
  ≡ nothing
random-786-dpll = refl

random-786-wsat :
  maybe-eval-sat (¬ ((Var 1) => (Var 1))) whole-sat
  ≡ nothing
random-786-wsat = refl

random-787-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-787-dpll = refl

random-787-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-787-wsat = refl

random-788-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ ((Var 4) ∨ (Var 3))) => ((¬ (Var 1)) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-788-dpll = refl

random-788-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ ((Var 4) ∨ (Var 3))) => ((¬ (Var 1)) ∧ (Var 2))) whole-sat
  ≡ just true
random-788-wsat = refl

random-789-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-789-dpll = refl

random-789-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-789-wsat = refl

random-790-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) ∧ (Var 1)) ∧ ((¬ (Var 1)) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-790-dpll = refl

random-790-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 1)) ∧ (Var 1)) ∧ ((¬ (Var 1)) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-790-wsat = refl

random-791-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-791-dpll = refl

random-791-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-791-wsat = refl

random-792-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 4)) => (((Var 2) ∨ (Var 4)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-792-dpll = refl

random-792-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ (Var 4)) => (((Var 2) ∨ (Var 4)) ∧ (Var 1))) whole-sat
  ≡ just true
random-792-wsat = refl

random-793-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-793-dpll = refl

random-793-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-793-wsat = refl

random-794-dpll :
  maybe-eval-sat ((Var 3) ∨ (¬ ((Var 2) => (Var 2)))) whole-DPLL
  ≡ just true
random-794-dpll = refl

random-794-wsat :
  maybe-eval-sat ((Var 3) ∨ (¬ ((Var 2) => (Var 2)))) whole-sat
  ≡ just true
random-794-wsat = refl

random-795-dpll :
  maybe-eval-sat (((Var 3) ∨ (¬ (Var 3))) ∨ (((Var 3) ∧ (Var 3)) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-795-dpll = refl

random-795-wsat :
  maybe-eval-sat (((Var 3) ∨ (¬ (Var 3))) ∨ (((Var 3) ∧ (Var 3)) ∧ (Var 3))) whole-sat
  ≡ just true
random-795-wsat = refl

random-796-dpll :
  maybe-eval-sat (¬ ((Var 4) ∧ ((Var 4) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-796-dpll = refl

random-796-wsat :
  maybe-eval-sat (¬ ((Var 4) ∧ ((Var 4) ∨ (Var 4)))) whole-sat
  ≡ just true
random-796-wsat = refl

random-797-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-797-dpll = refl

random-797-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-797-wsat = refl

random-798-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-798-dpll = refl

random-798-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-798-wsat = refl

random-799-dpll :
  maybe-eval-sat (¬ (¬ ((Var 1) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-799-dpll = refl

random-799-wsat :
  maybe-eval-sat (¬ (¬ ((Var 1) ∧ (Var 2)))) whole-sat
  ≡ just true
random-799-wsat = refl

random-800-dpll :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∧ ((Var 3) => (Var 1)))) whole-DPLL
  ≡ just true
random-800-dpll = refl

random-800-wsat :
  maybe-eval-sat (¬ ((¬ (Var 3)) ∧ ((Var 3) => (Var 1)))) whole-sat
  ≡ just true
random-800-wsat = refl

random-801-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 1))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-801-dpll = refl

random-801-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∧ (Var 1))) ∧ (Var 2)) whole-sat
  ≡ just true
random-801-wsat = refl

random-802-dpll :
  maybe-eval-sat ((Var 2) ∨ (((Var 4) ∨ (Var 4)) => ((Var 1) => (Var 1)))) whole-DPLL
  ≡ just true
random-802-dpll = refl

random-802-wsat :
  maybe-eval-sat ((Var 2) ∨ (((Var 4) ∨ (Var 4)) => ((Var 1) => (Var 1)))) whole-sat
  ≡ just true
random-802-wsat = refl

random-803-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∧ ((Var 3) => (Var 2))) => (Var 3)) whole-DPLL
  ≡ just true
random-803-dpll = refl

random-803-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 3)) ∧ ((Var 3) => (Var 2))) => (Var 3)) whole-sat
  ≡ just true
random-803-wsat = refl

random-804-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-804-dpll = refl

random-804-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-804-wsat = refl

random-805-dpll :
  maybe-eval-sat ((¬ (¬ (Var 4))) ∨ (Var 1)) whole-DPLL
  ≡ just true
random-805-dpll = refl

random-805-wsat :
  maybe-eval-sat ((¬ (¬ (Var 4))) ∨ (Var 1)) whole-sat
  ≡ just true
random-805-wsat = refl

random-806-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) => (¬ (Var 4))) ∨ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-806-dpll = refl

random-806-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 2)) => (¬ (Var 4))) ∨ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-806-wsat = refl

random-807-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-807-dpll = refl

random-807-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-807-wsat = refl

random-808-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 2)) ∨ (Var 1))) whole-DPLL
  ≡ nothing
random-808-dpll = refl

random-808-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 2)) ∨ (Var 1))) whole-sat
  ≡ nothing
random-808-wsat = refl

random-809-dpll :
  maybe-eval-sat ((Var 1) => (((Var 3) => (Var 2)) ∨ ((Var 2) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-809-dpll = refl

random-809-wsat :
  maybe-eval-sat ((Var 1) => (((Var 3) => (Var 2)) ∨ ((Var 2) ∧ (Var 2)))) whole-sat
  ≡ just true
random-809-wsat = refl

random-810-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-810-dpll = refl

random-810-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-810-wsat = refl

random-811-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 1))) => ((Var 2) => (Var 1))) whole-DPLL
  ≡ just true
random-811-dpll = refl

random-811-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 1))) => ((Var 2) => (Var 1))) whole-sat
  ≡ just true
random-811-wsat = refl

random-812-dpll :
  maybe-eval-sat ((Var 2) => (((Var 2) => (Var 1)) ∧ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-812-dpll = refl

random-812-wsat :
  maybe-eval-sat ((Var 2) => (((Var 2) => (Var 1)) ∧ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-812-wsat = refl

random-813-dpll :
  maybe-eval-sat ((Var 4) ∨ ((Var 1) ∨ ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-813-dpll = refl

random-813-wsat :
  maybe-eval-sat ((Var 4) ∨ ((Var 1) ∨ ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ just true
random-813-wsat = refl

random-814-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-814-dpll = refl

random-814-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-814-wsat = refl

random-815-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-815-dpll = refl

random-815-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-815-wsat = refl

random-816-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-816-dpll = refl

random-816-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-816-wsat = refl

random-817-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 3))) ∧ ((Var 4) => ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-817-dpll = refl

random-817-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∨ (Var 3))) ∧ ((Var 4) => ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-817-wsat = refl

random-818-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-818-dpll = refl

random-818-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-818-wsat = refl

random-819-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 4)) => ((¬ (Var 3)) ∧ ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-819-dpll = refl

random-819-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 4)) => ((¬ (Var 3)) ∧ ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-819-wsat = refl

random-820-dpll :
  maybe-eval-sat (((Var 2) ∧ (¬ (Var 4))) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-820-dpll = refl

random-820-wsat :
  maybe-eval-sat (((Var 2) ∧ (¬ (Var 4))) ∨ (Var 2)) whole-sat
  ≡ just true
random-820-wsat = refl

random-821-dpll :
  maybe-eval-sat (((Var 2) ∨ ((Var 1) => (Var 1))) => ((¬ (Var 4)) ∧ ((Var 4) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-821-dpll = refl

random-821-wsat :
  maybe-eval-sat (((Var 2) ∨ ((Var 1) => (Var 1))) => ((¬ (Var 4)) ∧ ((Var 4) ∨ (Var 2)))) whole-sat
  ≡ just true
random-821-wsat = refl

random-822-dpll :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ ((¬ (Var 4)) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-822-dpll = refl

random-822-wsat :
  maybe-eval-sat ((¬ (¬ (Var 2))) ∨ ((¬ (Var 4)) ∧ (Var 3))) whole-sat
  ≡ just true
random-822-wsat = refl

random-823-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-823-dpll = refl

random-823-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-823-wsat = refl

random-824-dpll :
  maybe-eval-sat ((¬ (¬ (Var 1))) ∧ (((Var 4) ∧ (Var 2)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-824-dpll = refl

random-824-wsat :
  maybe-eval-sat ((¬ (¬ (Var 1))) ∧ (((Var 4) ∧ (Var 2)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-824-wsat = refl

random-825-dpll :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 1) ∨ (Var 2))) ∨ (Var 4)) whole-DPLL
  ≡ just true
random-825-dpll = refl

random-825-wsat :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 1) ∨ (Var 2))) ∨ (Var 4)) whole-sat
  ≡ just true
random-825-wsat = refl

random-826-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-826-dpll = refl

random-826-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-826-wsat = refl

random-827-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∨ ((Var 2) ∨ (Var 2))) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-827-dpll = refl

random-827-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 1)) ∨ ((Var 2) ∨ (Var 2))) ∧ (Var 3)) whole-sat
  ≡ just true
random-827-wsat = refl

random-828-dpll :
  maybe-eval-sat ((Var 1) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-828-dpll = refl

random-828-wsat :
  maybe-eval-sat ((Var 1) ∧ (Var 3)) whole-sat
  ≡ just true
random-828-wsat = refl

random-829-dpll :
  maybe-eval-sat (((Var 3) => ((Var 1) ∧ (Var 3))) ∧ ((Var 2) ∨ ((Var 2) => (Var 4)))) whole-DPLL
  ≡ just true
random-829-dpll = refl

random-829-wsat :
  maybe-eval-sat (((Var 3) => ((Var 1) ∧ (Var 3))) ∧ ((Var 2) ∨ ((Var 2) => (Var 4)))) whole-sat
  ≡ just true
random-829-wsat = refl

random-830-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-830-dpll = refl

random-830-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-830-wsat = refl

random-831-dpll :
  maybe-eval-sat (¬ (((Var 2) => (Var 3)) ∨ ((Var 2) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-831-dpll = refl

random-831-wsat :
  maybe-eval-sat (¬ (((Var 2) => (Var 3)) ∨ ((Var 2) ∧ (Var 4)))) whole-sat
  ≡ just true
random-831-wsat = refl

random-832-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) => (Var 3)) => (Var 3)) whole-DPLL
  ≡ just true
random-832-dpll = refl

random-832-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) => (Var 3)) => (Var 3)) whole-sat
  ≡ just true
random-832-wsat = refl

random-833-dpll :
  maybe-eval-sat (¬ ((Var 1) => (Var 1))) whole-DPLL
  ≡ nothing
random-833-dpll = refl

random-833-wsat :
  maybe-eval-sat (¬ ((Var 1) => (Var 1))) whole-sat
  ≡ nothing
random-833-wsat = refl

random-834-dpll :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) ∧ (¬ ((Var 1) => (Var 1)))) whole-DPLL
  ≡ nothing
random-834-dpll = refl

random-834-wsat :
  maybe-eval-sat ((¬ ((Var 2) ∧ (Var 3))) ∧ (¬ ((Var 1) => (Var 1)))) whole-sat
  ≡ nothing
random-834-wsat = refl

random-835-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-835-dpll = refl

random-835-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-835-wsat = refl

random-836-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) => (Var 4))) => (((Var 2) ∧ (Var 1)) => ((Var 1) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-836-dpll = refl

random-836-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 4) => (Var 4))) => (((Var 2) ∧ (Var 1)) => ((Var 1) ∨ (Var 4)))) whole-sat
  ≡ just true
random-836-wsat = refl

random-837-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-837-dpll = refl

random-837-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-837-wsat = refl

random-838-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 3)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-838-dpll = refl

random-838-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 3)) ∧ (¬ (Var 2)))) whole-sat
  ≡ just true
random-838-wsat = refl

random-839-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) ∧ (Var 2)) ∨ ((¬ (Var 1)) ∨ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-839-dpll = refl

random-839-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 4)) ∧ (Var 2)) ∨ ((¬ (Var 1)) ∨ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-839-wsat = refl

random-840-dpll :
  maybe-eval-sat ((Var 3) ∧ (Var 3)) whole-DPLL
  ≡ just true
random-840-dpll = refl

random-840-wsat :
  maybe-eval-sat ((Var 3) ∧ (Var 3)) whole-sat
  ≡ just true
random-840-wsat = refl

random-841-dpll :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-841-dpll = refl

random-841-wsat :
  maybe-eval-sat ((Var 3) ∨ (¬ (¬ (Var 1)))) whole-sat
  ≡ just true
random-841-wsat = refl

random-842-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 3)) => ((Var 1) => (Var 1))) => (¬ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-842-dpll = refl

random-842-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 3)) => ((Var 1) => (Var 1))) => (¬ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-842-wsat = refl

random-843-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∧ ((Var 4) ∨ (Var 3))) ∧ (((Var 4) ∧ (Var 3)) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-843-dpll = refl

random-843-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 1)) ∧ ((Var 4) ∨ (Var 3))) ∧ (((Var 4) ∧ (Var 3)) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-843-wsat = refl

random-844-dpll :
  maybe-eval-sat ((((Var 3) => (Var 3)) ∧ (Var 1)) ∧ (((Var 1) => (Var 2)) ∨ ((Var 4) => (Var 4)))) whole-DPLL
  ≡ just true
random-844-dpll = refl

random-844-wsat :
  maybe-eval-sat ((((Var 3) => (Var 3)) ∧ (Var 1)) ∧ (((Var 1) => (Var 2)) ∨ ((Var 4) => (Var 4)))) whole-sat
  ≡ just true
random-844-wsat = refl

random-845-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-845-dpll = refl

random-845-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-845-wsat = refl

random-846-dpll :
  maybe-eval-sat (((Var 2) ∧ ((Var 3) => (Var 1))) ∧ (((Var 1) ∨ (Var 4)) => ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-846-dpll = refl

random-846-wsat :
  maybe-eval-sat (((Var 2) ∧ ((Var 3) => (Var 1))) ∧ (((Var 1) ∨ (Var 4)) => ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-846-wsat = refl

random-847-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-847-dpll = refl

random-847-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-847-wsat = refl

random-848-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-848-dpll = refl

random-848-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-848-wsat = refl

random-849-dpll :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-DPLL
  ≡ just true
random-849-dpll = refl

random-849-wsat :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-sat
  ≡ just true
random-849-wsat = refl

random-850-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) ∨ (Var 2)) ∨ ((Var 4) => (Var 3))) whole-DPLL
  ≡ just true
random-850-dpll = refl

random-850-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) ∨ (Var 2)) ∨ ((Var 4) => (Var 3))) whole-sat
  ≡ just true
random-850-wsat = refl

random-851-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-851-dpll = refl

random-851-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-851-wsat = refl

random-852-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∨ (Var 4)) ∧ ((¬ (Var 1)) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-852-dpll = refl

random-852-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∨ (Var 4)) ∧ ((¬ (Var 1)) ∧ (Var 4))) whole-sat
  ≡ just true
random-852-wsat = refl

random-853-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-853-dpll = refl

random-853-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-853-wsat = refl

random-854-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-854-dpll = refl

random-854-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-854-wsat = refl

random-855-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-855-dpll = refl

random-855-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-855-wsat = refl

random-856-dpll :
  maybe-eval-sat (((Var 4) => (¬ (Var 4))) => (¬ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-856-dpll = refl

random-856-wsat :
  maybe-eval-sat (((Var 4) => (¬ (Var 4))) => (¬ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-856-wsat = refl

random-857-dpll :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 3) => (Var 3))) ∧ (¬ (Var 1))) whole-DPLL
  ≡ just true
random-857-dpll = refl

random-857-wsat :
  maybe-eval-sat (((¬ (Var 3)) => ((Var 3) => (Var 3))) ∧ (¬ (Var 1))) whole-sat
  ≡ just true
random-857-wsat = refl

random-858-dpll :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 1) => (Var 2))) ∧ (((Var 4) ∨ (Var 2)) ∨ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-858-dpll = refl

random-858-wsat :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 1) => (Var 2))) ∧ (((Var 4) ∨ (Var 2)) ∨ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-858-wsat = refl

random-859-dpll :
  maybe-eval-sat ((Var 4) => (¬ ((Var 3) => (Var 2)))) whole-DPLL
  ≡ just true
random-859-dpll = refl

random-859-wsat :
  maybe-eval-sat ((Var 4) => (¬ ((Var 3) => (Var 2)))) whole-sat
  ≡ just true
random-859-wsat = refl

random-860-dpll :
  maybe-eval-sat (¬ ((Var 1) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-860-dpll = refl

random-860-wsat :
  maybe-eval-sat (¬ ((Var 1) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-860-wsat = refl

random-861-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 4))) ∧ ((¬ (Var 3)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-861-dpll = refl

random-861-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 4))) ∧ ((¬ (Var 3)) ∨ (Var 3))) whole-sat
  ≡ just true
random-861-wsat = refl

random-862-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-862-dpll = refl

random-862-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-862-wsat = refl

random-863-dpll :
  maybe-eval-sat (((Var 3) => (Var 2)) => (Var 1)) whole-DPLL
  ≡ just true
random-863-dpll = refl

random-863-wsat :
  maybe-eval-sat (((Var 3) => (Var 2)) => (Var 1)) whole-sat
  ≡ just true
random-863-wsat = refl

random-864-dpll :
  maybe-eval-sat ((Var 1) ∨ (((Var 3) ∨ (Var 1)) ∨ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-864-dpll = refl

random-864-wsat :
  maybe-eval-sat ((Var 1) ∨ (((Var 3) ∨ (Var 1)) ∨ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-864-wsat = refl

random-865-dpll :
  maybe-eval-sat ((¬ (Var 2)) => ((Var 1) => (¬ (Var 2)))) whole-DPLL
  ≡ just true
random-865-dpll = refl

random-865-wsat :
  maybe-eval-sat ((¬ (Var 2)) => ((Var 1) => (¬ (Var 2)))) whole-sat
  ≡ just true
random-865-wsat = refl

random-866-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-866-dpll = refl

random-866-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-866-wsat = refl

random-867-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-867-dpll = refl

random-867-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-867-wsat = refl

random-868-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-868-dpll = refl

random-868-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-868-wsat = refl

random-869-dpll :
  maybe-eval-sat ((¬ (Var 4)) ∨ ((Var 4) ∧ (Var 3))) whole-DPLL
  ≡ just true
random-869-dpll = refl

random-869-wsat :
  maybe-eval-sat ((¬ (Var 4)) ∨ ((Var 4) ∧ (Var 3))) whole-sat
  ≡ just true
random-869-wsat = refl

random-870-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-870-dpll = refl

random-870-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ (Var 4))) whole-sat
  ≡ just true
random-870-wsat = refl

random-871-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 2))) whole-DPLL
  ≡ just true
random-871-dpll = refl

random-871-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 2))) whole-sat
  ≡ just true
random-871-wsat = refl

random-872-dpll :
  maybe-eval-sat ((Var 1) ∨ (Var 2)) whole-DPLL
  ≡ just true
random-872-dpll = refl

random-872-wsat :
  maybe-eval-sat ((Var 1) ∨ (Var 2)) whole-sat
  ≡ just true
random-872-wsat = refl

random-873-dpll :
  maybe-eval-sat ((Var 4) => (((Var 1) => (Var 1)) ∧ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-873-dpll = refl

random-873-wsat :
  maybe-eval-sat ((Var 4) => (((Var 1) => (Var 1)) ∧ (¬ (Var 4)))) whole-sat
  ≡ just true
random-873-wsat = refl

random-874-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-874-dpll = refl

random-874-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-874-wsat = refl

random-875-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 3))) ∨ ((Var 3) ∨ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-875-dpll = refl

random-875-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 3))) ∨ ((Var 3) ∨ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-875-wsat = refl

random-876-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-876-dpll = refl

random-876-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-876-wsat = refl

random-877-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) ∧ (¬ ((Var 1) => (Var 4)))) whole-DPLL
  ≡ just true
random-877-dpll = refl

random-877-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) ∧ (¬ ((Var 1) => (Var 4)))) whole-sat
  ≡ just true
random-877-wsat = refl

random-878-dpll :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∨ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ nothing
random-878-dpll = refl

random-878-wsat :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∨ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ nothing
random-878-wsat = refl

random-879-dpll :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 2) => (Var 1))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-879-dpll = refl

random-879-wsat :
  maybe-eval-sat ((((Var 2) => (Var 3)) => ((Var 2) => (Var 1))) ∧ (Var 2)) whole-sat
  ≡ just true
random-879-wsat = refl

random-880-dpll :
  maybe-eval-sat ((Var 3) ∧ (Var 1)) whole-DPLL
  ≡ just true
random-880-dpll = refl

random-880-wsat :
  maybe-eval-sat ((Var 3) ∧ (Var 1)) whole-sat
  ≡ just true
random-880-wsat = refl

random-881-dpll :
  maybe-eval-sat ((((Var 3) => (Var 3)) ∨ (Var 2)) ∧ (((Var 2) ∧ (Var 2)) ∧ (Var 1))) whole-DPLL
  ≡ just true
random-881-dpll = refl

random-881-wsat :
  maybe-eval-sat ((((Var 3) => (Var 3)) ∨ (Var 2)) ∧ (((Var 2) ∧ (Var 2)) ∧ (Var 1))) whole-sat
  ≡ just true
random-881-wsat = refl

random-882-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-882-dpll = refl

random-882-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-882-wsat = refl

random-883-dpll :
  maybe-eval-sat ((Var 3) ∨ (((Var 1) ∨ (Var 1)) ∨ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-883-dpll = refl

random-883-wsat :
  maybe-eval-sat ((Var 3) ∨ (((Var 1) ∨ (Var 1)) ∨ (¬ (Var 3)))) whole-sat
  ≡ just true
random-883-wsat = refl

random-884-dpll :
  maybe-eval-sat (((Var 1) => ((Var 1) ∧ (Var 1))) => ((Var 2) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-884-dpll = refl

random-884-wsat :
  maybe-eval-sat (((Var 1) => ((Var 1) ∧ (Var 1))) => ((Var 2) ∧ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-884-wsat = refl

random-885-dpll :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-885-dpll = refl

random-885-wsat :
  maybe-eval-sat (¬ (¬ ((Var 3) ∨ (Var 1)))) whole-sat
  ≡ just true
random-885-wsat = refl

random-886-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => (Var 3)) ∧ (¬ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-886-dpll = refl

random-886-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 1)) => (Var 3)) ∧ (¬ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-886-wsat = refl

random-887-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-887-dpll = refl

random-887-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-887-wsat = refl

random-888-dpll :
  maybe-eval-sat (¬ (Var 3)) whole-DPLL
  ≡ just true
random-888-dpll = refl

random-888-wsat :
  maybe-eval-sat (¬ (Var 3)) whole-sat
  ≡ just true
random-888-wsat = refl

random-889-dpll :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 4))) whole-DPLL
  ≡ just true
random-889-dpll = refl

random-889-wsat :
  maybe-eval-sat (¬ ((Var 3) ∧ (Var 4))) whole-sat
  ≡ just true
random-889-wsat = refl

random-890-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 1) ∧ (Var 3))) ∧ (((Var 2) ∨ (Var 2)) ∨ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-890-dpll = refl

random-890-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ ((Var 1) ∧ (Var 3))) ∧ (((Var 2) ∨ (Var 2)) ∨ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-890-wsat = refl

random-891-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 2)) ∨ ((Var 4) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-891-dpll = refl

random-891-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 2)) ∨ ((Var 4) ∨ (Var 4)))) whole-sat
  ≡ just true
random-891-wsat = refl

random-892-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-892-dpll = refl

random-892-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-892-wsat = refl

random-893-dpll :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ ((¬ (Var 3)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-893-dpll = refl

random-893-wsat :
  maybe-eval-sat ((¬ ((Var 3) ∨ (Var 3))) ∨ ((¬ (Var 3)) ∨ (Var 3))) whole-sat
  ≡ just true
random-893-wsat = refl

random-894-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-894-dpll = refl

random-894-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-894-wsat = refl

random-895-dpll :
  maybe-eval-sat (((Var 2) ∨ (Var 3)) => ((¬ (Var 1)) ∨ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-895-dpll = refl

random-895-wsat :
  maybe-eval-sat (((Var 2) ∨ (Var 3)) => ((¬ (Var 1)) ∨ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-895-wsat = refl

random-896-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-896-dpll = refl

random-896-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-896-wsat = refl

random-897-dpll :
  maybe-eval-sat (((Var 3) ∧ ((Var 3) => (Var 2))) => ((Var 3) ∨ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-897-dpll = refl

random-897-wsat :
  maybe-eval-sat (((Var 3) ∧ ((Var 3) => (Var 2))) => ((Var 3) ∨ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-897-wsat = refl

random-898-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∨ ((Var 4) => (Var 1))) ∨ (¬ (Var 3))) whole-DPLL
  ≡ just true
random-898-dpll = refl

random-898-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) ∨ ((Var 4) => (Var 1))) ∨ (¬ (Var 3))) whole-sat
  ≡ just true
random-898-wsat = refl

random-899-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-899-dpll = refl

random-899-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-899-wsat = refl

random-900-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 2)) => (Var 1))) whole-DPLL
  ≡ just true
random-900-dpll = refl

random-900-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 2)) => (Var 1))) whole-sat
  ≡ just true
random-900-wsat = refl

random-901-dpll :
  maybe-eval-sat (¬ (¬ ((Var 2) => (Var 2)))) whole-DPLL
  ≡ just true
random-901-dpll = refl

random-901-wsat :
  maybe-eval-sat (¬ (¬ ((Var 2) => (Var 2)))) whole-sat
  ≡ just true
random-901-wsat = refl

random-902-dpll :
  maybe-eval-sat (¬ ((¬ (Var 4)) ∧ ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-902-dpll = refl

random-902-wsat :
  maybe-eval-sat (¬ ((¬ (Var 4)) ∧ ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-902-wsat = refl

random-903-dpll :
  maybe-eval-sat (((Var 4) ∧ (Var 1)) => (((Var 2) ∧ (Var 1)) => ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-903-dpll = refl

random-903-wsat :
  maybe-eval-sat (((Var 4) ∧ (Var 1)) => (((Var 2) ∧ (Var 1)) => ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-903-wsat = refl

random-904-dpll :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∨ (Var 4)) => (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-904-dpll = refl

random-904-wsat :
  maybe-eval-sat ((Var 4) ∨ (((Var 1) ∨ (Var 4)) => (¬ (Var 3)))) whole-sat
  ≡ just true
random-904-wsat = refl

random-905-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∧ ((Var 1) ∨ (Var 2))) ∧ (((Var 2) ∧ (Var 1)) ∧ ((Var 4) ∨ (Var 3)))) whole-DPLL
  ≡ nothing
random-905-dpll = refl

random-905-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∧ ((Var 1) ∨ (Var 2))) ∧ (((Var 2) ∧ (Var 1)) ∧ ((Var 4) ∨ (Var 3)))) whole-sat
  ≡ nothing
random-905-wsat = refl

random-906-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 3) ∨ (Var 2))) => (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-906-dpll = refl

random-906-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 1)) ∨ ((Var 3) ∨ (Var 2))) => (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-906-wsat = refl

random-907-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 2) ∨ (Var 1))) ∧ (¬ ((Var 1) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-907-dpll = refl

random-907-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 2)) ∧ ((Var 2) ∨ (Var 1))) ∧ (¬ ((Var 1) ∨ (Var 3)))) whole-sat
  ≡ just true
random-907-wsat = refl

random-908-dpll :
  maybe-eval-sat (((Var 1) ∧ (¬ (Var 4))) ∧ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-908-dpll = refl

random-908-wsat :
  maybe-eval-sat (((Var 1) ∧ (¬ (Var 4))) ∧ (¬ (Var 2))) whole-sat
  ≡ just true
random-908-wsat = refl

random-909-dpll :
  maybe-eval-sat ((¬ (Var 2)) => (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-909-dpll = refl

random-909-wsat :
  maybe-eval-sat ((¬ (Var 2)) => (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-909-wsat = refl

random-910-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-910-dpll = refl

random-910-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-910-wsat = refl

random-911-dpll :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => ((Var 1) ∧ (Var 3))) ∧ (((Var 1) ∨ (Var 1)) ∧ ((Var 2) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-911-dpll = refl

random-911-wsat :
  maybe-eval-sat ((((Var 2) ∧ (Var 4)) => ((Var 1) ∧ (Var 3))) ∧ (((Var 1) ∨ (Var 1)) ∧ ((Var 2) ∨ (Var 2)))) whole-sat
  ≡ just true
random-911-wsat = refl

random-912-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => (Var 3))) whole-DPLL
  ≡ just true
random-912-dpll = refl

random-912-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => (Var 3))) whole-sat
  ≡ just true
random-912-wsat = refl

random-913-dpll :
  maybe-eval-sat ((¬ ((Var 2) => (Var 2))) ∧ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ nothing
random-913-dpll = refl

random-913-wsat :
  maybe-eval-sat ((¬ ((Var 2) => (Var 2))) ∧ (¬ (¬ (Var 4)))) whole-sat
  ≡ nothing
random-913-wsat = refl

random-914-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-914-dpll = refl

random-914-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (¬ (Var 4))) ∨ (Var 3)) whole-sat
  ≡ just true
random-914-wsat = refl

random-915-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => ((Var 4) => (Var 1))) ∧ (Var 2)) whole-DPLL
  ≡ just true
random-915-dpll = refl

random-915-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) => ((Var 4) => (Var 1))) ∧ (Var 2)) whole-sat
  ≡ just true
random-915-wsat = refl

random-916-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-916-dpll = refl

random-916-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-916-wsat = refl

random-917-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ (¬ (Var 4))) => (((Var 2) => (Var 4)) => (Var 3))) whole-DPLL
  ≡ just true
random-917-dpll = refl

random-917-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ (¬ (Var 4))) => (((Var 2) => (Var 4)) => (Var 3))) whole-sat
  ≡ just true
random-917-wsat = refl

random-918-dpll :
  maybe-eval-sat ((Var 1) => (¬ (¬ (Var 3)))) whole-DPLL
  ≡ just true
random-918-dpll = refl

random-918-wsat :
  maybe-eval-sat ((Var 1) => (¬ (¬ (Var 3)))) whole-sat
  ≡ just true
random-918-wsat = refl

random-919-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 2)) ∧ ((Var 2) => (Var 1))) => (((Var 2) ∧ (Var 4)) => (Var 4))) whole-DPLL
  ≡ just true
random-919-dpll = refl

random-919-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 2)) ∧ ((Var 2) => (Var 1))) => (((Var 2) ∧ (Var 4)) => (Var 4))) whole-sat
  ≡ just true
random-919-wsat = refl

random-920-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-920-dpll = refl

random-920-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-920-wsat = refl

random-921-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-921-dpll = refl

random-921-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-921-wsat = refl

random-922-dpll :
  maybe-eval-sat ((((Var 4) => (Var 3)) ∨ (Var 4)) ∧ ((¬ (Var 3)) => ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-922-dpll = refl

random-922-wsat :
  maybe-eval-sat ((((Var 4) => (Var 3)) ∨ (Var 4)) ∧ ((¬ (Var 3)) => ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ just true
random-922-wsat = refl

random-923-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-923-dpll = refl

random-923-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-923-wsat = refl

random-924-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 3) ∨ (Var 4))) => (¬ ((Var 4) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-924-dpll = refl

random-924-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ ((Var 3) ∨ (Var 4))) => (¬ ((Var 4) ∨ (Var 1)))) whole-sat
  ≡ just true
random-924-wsat = refl

random-925-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∨ ((Var 4) ∨ (Var 1))) => ((¬ (Var 4)) ∧ (Var 4))) whole-DPLL
  ≡ nothing
random-925-dpll = refl

random-925-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∨ ((Var 4) ∨ (Var 1))) => ((¬ (Var 4)) ∧ (Var 4))) whole-sat
  ≡ nothing
random-925-wsat = refl

random-926-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-926-dpll = refl

random-926-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-926-wsat = refl

random-927-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-927-dpll = refl

random-927-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-927-wsat = refl

random-928-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-928-dpll = refl

random-928-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-928-wsat = refl

random-929-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 3)) ∨ ((Var 1) ∧ (Var 1))) => (Var 1)) whole-DPLL
  ≡ just true
random-929-dpll = refl

random-929-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 3)) ∨ ((Var 1) ∧ (Var 1))) => (Var 1)) whole-sat
  ≡ just true
random-929-wsat = refl

random-930-dpll :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) => (¬ (Var 3))) ∧ (((Var 3) => (Var 4)) => (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-930-dpll = refl

random-930-wsat :
  maybe-eval-sat ((((Var 4) ∨ (Var 3)) => (¬ (Var 3))) ∧ (((Var 3) => (Var 4)) => (¬ (Var 4)))) whole-sat
  ≡ just true
random-930-wsat = refl

random-931-dpll :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) ∧ ((Var 2) => (Var 2))) => (Var 2)) whole-DPLL
  ≡ just true
random-931-dpll = refl

random-931-wsat :
  maybe-eval-sat ((((Var 4) ∧ (Var 4)) ∧ ((Var 2) => (Var 2))) => (Var 2)) whole-sat
  ≡ just true
random-931-wsat = refl

random-932-dpll :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 4)) ∨ ((Var 3) => (Var 1)))) whole-DPLL
  ≡ nothing
random-932-dpll = refl

random-932-wsat :
  maybe-eval-sat (¬ (((Var 3) ∨ (Var 4)) ∨ ((Var 3) => (Var 1)))) whole-sat
  ≡ nothing
random-932-wsat = refl

random-933-dpll :
  maybe-eval-sat (((Var 3) ∨ (¬ (Var 3))) => (Var 3)) whole-DPLL
  ≡ just true
random-933-dpll = refl

random-933-wsat :
  maybe-eval-sat (((Var 3) ∨ (¬ (Var 3))) => (Var 3)) whole-sat
  ≡ just true
random-933-wsat = refl

random-934-dpll :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 1) ∧ (Var 4))) ∧ (((Var 1) ∧ (Var 2)) ∧ (¬ (Var 2)))) whole-DPLL
  ≡ nothing
random-934-dpll = refl

random-934-wsat :
  maybe-eval-sat (((¬ (Var 1)) => ((Var 1) ∧ (Var 4))) ∧ (((Var 1) ∧ (Var 2)) ∧ (¬ (Var 2)))) whole-sat
  ≡ nothing
random-934-wsat = refl

random-935-dpll :
  maybe-eval-sat (¬ (Var 4)) whole-DPLL
  ≡ just true
random-935-dpll = refl

random-935-wsat :
  maybe-eval-sat (¬ (Var 4)) whole-sat
  ≡ just true
random-935-wsat = refl

random-936-dpll :
  maybe-eval-sat ((Var 2) => (Var 4)) whole-DPLL
  ≡ just true
random-936-dpll = refl

random-936-wsat :
  maybe-eval-sat ((Var 2) => (Var 4)) whole-sat
  ≡ just true
random-936-wsat = refl

random-937-dpll :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-DPLL
  ≡ just true
random-937-dpll = refl

random-937-wsat :
  maybe-eval-sat (¬ (¬ (Var 4))) whole-sat
  ≡ just true
random-937-wsat = refl

random-938-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-938-dpll = refl

random-938-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-938-wsat = refl

random-939-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-939-dpll = refl

random-939-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-939-wsat = refl

random-940-dpll :
  maybe-eval-sat ((Var 1) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-940-dpll = refl

random-940-wsat :
  maybe-eval-sat ((Var 1) ∧ (Var 4)) whole-sat
  ≡ just true
random-940-wsat = refl

random-941-dpll :
  maybe-eval-sat (((Var 3) ∨ ((Var 2) ∨ (Var 4))) ∧ (((Var 3) ∨ (Var 1)) ∧ ((Var 3) => (Var 4)))) whole-DPLL
  ≡ just true
random-941-dpll = refl

random-941-wsat :
  maybe-eval-sat (((Var 3) ∨ ((Var 2) ∨ (Var 4))) ∧ (((Var 3) ∨ (Var 1)) ∧ ((Var 3) => (Var 4)))) whole-sat
  ≡ just true
random-941-wsat = refl

random-942-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ ((Var 2) ∧ (Var 4))) => (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-942-dpll = refl

random-942-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∧ ((Var 2) ∧ (Var 4))) => (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-942-wsat = refl

random-943-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-943-dpll = refl

random-943-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-943-wsat = refl

random-944-dpll :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) ∨ (Var 2))) ∨ ((¬ (Var 4)) ∨ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-944-dpll = refl

random-944-wsat :
  maybe-eval-sat (((¬ (Var 3)) ∧ ((Var 2) ∨ (Var 2))) ∨ ((¬ (Var 4)) ∨ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-944-wsat = refl

random-945-dpll :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 2) ∧ (Var 4))) ∨ (¬ ((Var 1) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-945-dpll = refl

random-945-wsat :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 2) ∧ (Var 4))) ∨ (¬ ((Var 1) ∨ (Var 2)))) whole-sat
  ≡ just true
random-945-wsat = refl

random-946-dpll :
  maybe-eval-sat (¬ ((¬ (Var 4)) => (Var 4))) whole-DPLL
  ≡ just true
random-946-dpll = refl

random-946-wsat :
  maybe-eval-sat (¬ ((¬ (Var 4)) => (Var 4))) whole-sat
  ≡ just true
random-946-wsat = refl

random-947-dpll :
  maybe-eval-sat ((Var 3) => ((¬ (Var 2)) ∧ ((Var 3) ∨ (Var 2)))) whole-DPLL
  ≡ just true
random-947-dpll = refl

random-947-wsat :
  maybe-eval-sat ((Var 3) => ((¬ (Var 2)) ∧ ((Var 3) ∨ (Var 2)))) whole-sat
  ≡ just true
random-947-wsat = refl

random-948-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-948-dpll = refl

random-948-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-948-wsat = refl

random-949-dpll :
  maybe-eval-sat ((Var 1) ∧ ((Var 1) ∨ ((Var 1) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-949-dpll = refl

random-949-wsat :
  maybe-eval-sat ((Var 1) ∧ ((Var 1) ∨ ((Var 1) ∧ (Var 4)))) whole-sat
  ≡ just true
random-949-wsat = refl

random-950-dpll :
  maybe-eval-sat ((¬ (Var 3)) => ((¬ (Var 1)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-950-dpll = refl

random-950-wsat :
  maybe-eval-sat ((¬ (Var 3)) => ((¬ (Var 1)) ∨ (Var 3))) whole-sat
  ≡ just true
random-950-wsat = refl

random-951-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 1)) => (((Var 4) ∨ (Var 1)) => ((Var 4) => (Var 4)))) whole-DPLL
  ≡ just true
random-951-dpll = refl

random-951-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∨ (Var 1)) => (((Var 4) ∨ (Var 1)) => ((Var 4) => (Var 4)))) whole-sat
  ≡ just true
random-951-wsat = refl

random-952-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-952-dpll = refl

random-952-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-952-wsat = refl

random-953-dpll :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) => (Var 3))) whole-DPLL
  ≡ just true
random-953-dpll = refl

random-953-wsat :
  maybe-eval-sat (¬ (((Var 1) ∨ (Var 4)) => (Var 3))) whole-sat
  ≡ just true
random-953-wsat = refl

random-954-dpll :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) ∨ (¬ (Var 2))) ∨ (¬ (Var 1))) whole-DPLL
  ≡ just true
random-954-dpll = refl

random-954-wsat :
  maybe-eval-sat ((((Var 3) ∧ (Var 4)) ∨ (¬ (Var 2))) ∨ (¬ (Var 1))) whole-sat
  ≡ just true
random-954-wsat = refl

random-955-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-955-dpll = refl

random-955-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-955-wsat = refl

random-956-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-956-dpll = refl

random-956-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-956-wsat = refl

random-957-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-957-dpll = refl

random-957-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-957-wsat = refl

random-958-dpll :
  maybe-eval-sat (((Var 4) ∧ ((Var 4) ∨ (Var 1))) ∧ (((Var 1) ∨ (Var 2)) => (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-958-dpll = refl

random-958-wsat :
  maybe-eval-sat (((Var 4) ∧ ((Var 4) ∨ (Var 1))) ∧ (((Var 1) ∨ (Var 2)) => (¬ (Var 1)))) whole-sat
  ≡ just true
random-958-wsat = refl

random-959-dpll :
  maybe-eval-sat ((Var 1) ∧ ((Var 1) => (Var 1))) whole-DPLL
  ≡ just true
random-959-dpll = refl

random-959-wsat :
  maybe-eval-sat ((Var 1) ∧ ((Var 1) => (Var 1))) whole-sat
  ≡ just true
random-959-wsat = refl

random-960-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-960-dpll = refl

random-960-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-960-wsat = refl

random-961-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-961-dpll = refl

random-961-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-961-wsat = refl

random-962-dpll :
  maybe-eval-sat ((Var 4) ∨ (¬ (Var 2))) whole-DPLL
  ≡ just true
random-962-dpll = refl

random-962-wsat :
  maybe-eval-sat ((Var 4) ∨ (¬ (Var 2))) whole-sat
  ≡ just true
random-962-wsat = refl

random-963-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-963-dpll = refl

random-963-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-963-wsat = refl

random-964-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-964-dpll = refl

random-964-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-964-wsat = refl

random-965-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-965-dpll = refl

random-965-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-965-wsat = refl

random-966-dpll :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-DPLL
  ≡ just true
random-966-dpll = refl

random-966-wsat :
  maybe-eval-sat (¬ ((¬ (Var 2)) ∨ ((Var 4) ∧ (Var 2)))) whole-sat
  ≡ just true
random-966-wsat = refl

random-967-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∨ ((Var 3) => (Var 3))) => ((Var 2) ∧ (¬ (Var 1)))) whole-DPLL
  ≡ just true
random-967-dpll = refl

random-967-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) ∨ ((Var 3) => (Var 3))) => ((Var 2) ∧ (¬ (Var 1)))) whole-sat
  ≡ just true
random-967-wsat = refl

random-968-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-968-dpll = refl

random-968-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-968-wsat = refl

random-969-dpll :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 3) => (Var 1))) ∧ (¬ ((Var 1) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-969-dpll = refl

random-969-wsat :
  maybe-eval-sat (((¬ (Var 2)) ∨ ((Var 3) => (Var 1))) ∧ (¬ ((Var 1) ∨ (Var 1)))) whole-sat
  ≡ just true
random-969-wsat = refl

random-970-dpll :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 2) => (Var 4))) ∧ (Var 4)) whole-DPLL
  ≡ just true
random-970-dpll = refl

random-970-wsat :
  maybe-eval-sat (((¬ (Var 2)) => ((Var 2) => (Var 4))) ∧ (Var 4)) whole-sat
  ≡ just true
random-970-wsat = refl

random-971-dpll :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 4)) ∨ (Var 4))) whole-DPLL
  ≡ just true
random-971-dpll = refl

random-971-wsat :
  maybe-eval-sat (¬ (((Var 2) ∧ (Var 4)) ∨ (Var 4))) whole-sat
  ≡ just true
random-971-wsat = refl

random-972-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-972-dpll = refl

random-972-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-972-wsat = refl

random-973-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) => ((Var 1) => ((Var 4) => (Var 2)))) whole-DPLL
  ≡ just true
random-973-dpll = refl

random-973-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 2))) => ((Var 1) => ((Var 4) => (Var 2)))) whole-sat
  ≡ just true
random-973-wsat = refl

random-974-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-974-dpll = refl

random-974-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-974-wsat = refl

random-975-dpll :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 4))) => (¬ ((Var 4) ∧ (Var 4)))) whole-DPLL
  ≡ just true
random-975-dpll = refl

random-975-wsat :
  maybe-eval-sat ((¬ ((Var 1) ∧ (Var 4))) => (¬ ((Var 4) ∧ (Var 4)))) whole-sat
  ≡ just true
random-975-wsat = refl

random-976-dpll :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 1)) ∧ ((Var 4) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-976-dpll = refl

random-976-wsat :
  maybe-eval-sat ((Var 3) ∧ ((¬ (Var 1)) ∧ ((Var 4) ∧ (Var 3)))) whole-sat
  ≡ just true
random-976-wsat = refl

random-977-dpll :
  maybe-eval-sat (¬ ((Var 4) ∨ ((Var 2) ∧ (Var 1)))) whole-DPLL
  ≡ just true
random-977-dpll = refl

random-977-wsat :
  maybe-eval-sat (¬ ((Var 4) ∨ ((Var 2) ∧ (Var 1)))) whole-sat
  ≡ just true
random-977-wsat = refl

random-978-dpll :
  maybe-eval-sat (((Var 4) => ((Var 4) ∧ (Var 4))) ∧ (¬ ((Var 3) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-978-dpll = refl

random-978-wsat :
  maybe-eval-sat (((Var 4) => ((Var 4) ∧ (Var 4))) ∧ (¬ ((Var 3) ∨ (Var 3)))) whole-sat
  ≡ just true
random-978-wsat = refl

random-979-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-979-dpll = refl

random-979-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-979-wsat = refl

random-980-dpll :
  maybe-eval-sat ((Var 2) => (((Var 3) => (Var 4)) ∧ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-980-dpll = refl

random-980-wsat :
  maybe-eval-sat ((Var 2) => (((Var 3) => (Var 4)) ∧ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-980-wsat = refl

random-981-dpll :
  maybe-eval-sat ((Var 4) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-981-dpll = refl

random-981-wsat :
  maybe-eval-sat ((Var 4) ∨ (Var 3)) whole-sat
  ≡ just true
random-981-wsat = refl

random-982-dpll :
  maybe-eval-sat ((¬ ((Var 3) => (Var 3))) ∨ ((¬ (Var 4)) ∧ ((Var 3) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-982-dpll = refl

random-982-wsat :
  maybe-eval-sat ((¬ ((Var 3) => (Var 3))) ∨ ((¬ (Var 4)) ∧ ((Var 3) ∧ (Var 3)))) whole-sat
  ≡ just true
random-982-wsat = refl

random-983-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-983-dpll = refl

random-983-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-983-wsat = refl

random-984-dpll :
  maybe-eval-sat (Var 4) whole-DPLL
  ≡ just true
random-984-dpll = refl

random-984-wsat :
  maybe-eval-sat (Var 4) whole-sat
  ≡ just true
random-984-wsat = refl

random-985-dpll :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) => ((Var 3) => (Var 4))) => (Var 2)) whole-DPLL
  ≡ just true
random-985-dpll = refl

random-985-wsat :
  maybe-eval-sat ((((Var 1) ∧ (Var 4)) => ((Var 3) => (Var 4))) => (Var 2)) whole-sat
  ≡ just true
random-985-wsat = refl

random-986-dpll :
  maybe-eval-sat ((¬ (¬ (Var 1))) ∨ (Var 3)) whole-DPLL
  ≡ just true
random-986-dpll = refl

random-986-wsat :
  maybe-eval-sat ((¬ (¬ (Var 1))) ∨ (Var 3)) whole-sat
  ≡ just true
random-986-wsat = refl

random-987-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) => ((Var 2) => (Var 3))) => (Var 4)) whole-DPLL
  ≡ just true
random-987-dpll = refl

random-987-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 3)) => ((Var 2) => (Var 3))) => (Var 4)) whole-sat
  ≡ just true
random-987-wsat = refl

random-988-dpll :
  maybe-eval-sat (Var 1) whole-DPLL
  ≡ just true
random-988-dpll = refl

random-988-wsat :
  maybe-eval-sat (Var 1) whole-sat
  ≡ just true
random-988-wsat = refl

random-989-dpll :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∧ ((Var 2) ∨ (Var 2))) => (¬ ((Var 2) => (Var 3)))) whole-DPLL
  ≡ just true
random-989-dpll = refl

random-989-wsat :
  maybe-eval-sat ((((Var 3) ∨ (Var 3)) ∧ ((Var 2) ∨ (Var 2))) => (¬ ((Var 2) => (Var 3)))) whole-sat
  ≡ just true
random-989-wsat = refl

random-990-dpll :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) => (¬ (Var 1))) => (¬ (Var 1))) whole-DPLL
  ≡ just true
random-990-dpll = refl

random-990-wsat :
  maybe-eval-sat ((((Var 2) ∨ (Var 1)) => (¬ (Var 1))) => (¬ (Var 1))) whole-sat
  ≡ just true
random-990-wsat = refl

random-991-dpll :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 3)) => ((¬ (Var 4)) ∨ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-991-dpll = refl

random-991-wsat :
  maybe-eval-sat (((¬ (Var 4)) ∧ (Var 3)) => ((¬ (Var 4)) ∨ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-991-wsat = refl

random-992-dpll :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 3)))) whole-DPLL
  ≡ just true
random-992-dpll = refl

random-992-wsat :
  maybe-eval-sat (¬ (¬ ((Var 2) ∧ (Var 3)))) whole-sat
  ≡ just true
random-992-wsat = refl

random-993-dpll :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ (¬ (Var 3))) => ((¬ (Var 2)) ∧ ((Var 2) ∨ (Var 1)))) whole-DPLL
  ≡ just true
random-993-dpll = refl

random-993-wsat :
  maybe-eval-sat ((((Var 1) ∨ (Var 4)) ∧ (¬ (Var 3))) => ((¬ (Var 2)) ∧ ((Var 2) ∨ (Var 1)))) whole-sat
  ≡ just true
random-993-wsat = refl

random-994-dpll :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∨ ((Var 1) ∧ (Var 2))) => ((Var 2) ∨ ((Var 2) ∨ (Var 3)))) whole-DPLL
  ≡ just true
random-994-dpll = refl

random-994-wsat :
  maybe-eval-sat ((((Var 1) => (Var 4)) ∨ ((Var 1) ∧ (Var 2))) => ((Var 2) ∨ ((Var 2) ∨ (Var 3)))) whole-sat
  ≡ just true
random-994-wsat = refl

random-995-dpll :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 1))) ∨ (((Var 4) ∨ (Var 3)) ∨ (Var 3))) whole-DPLL
  ≡ just true
random-995-dpll = refl

random-995-wsat :
  maybe-eval-sat ((¬ ((Var 4) ∨ (Var 1))) ∨ (((Var 4) ∨ (Var 3)) ∨ (Var 3))) whole-sat
  ≡ just true
random-995-wsat = refl

random-996-dpll :
  maybe-eval-sat (Var 2) whole-DPLL
  ≡ just true
random-996-dpll = refl

random-996-wsat :
  maybe-eval-sat (Var 2) whole-sat
  ≡ just true
random-996-wsat = refl

random-997-dpll :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-DPLL
  ≡ just true
random-997-dpll = refl

random-997-wsat :
  maybe-eval-sat (¬ (¬ (¬ (Var 4)))) whole-sat
  ≡ just true
random-997-wsat = refl

random-998-dpll :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => ((Var 4) ∨ (Var 4)))) whole-DPLL
  ≡ just true
random-998-dpll = refl

random-998-wsat :
  maybe-eval-sat (¬ (((Var 3) => (Var 2)) => ((Var 4) ∨ (Var 4)))) whole-sat
  ≡ just true
random-998-wsat = refl

random-999-dpll :
  maybe-eval-sat (Var 3) whole-DPLL
  ≡ just true
random-999-dpll = refl

random-999-wsat :
  maybe-eval-sat (Var 3) whole-sat
  ≡ just true
random-999-wsat = refl

random-1000-dpll :
  maybe-eval-sat (((¬ (Var 1)) ∧ (¬ (Var 3))) ∧ ((Var 4) => (Var 3))) whole-DPLL
  ≡ just true
random-1000-dpll = refl

random-1000-wsat :
  maybe-eval-sat (((¬ (Var 1)) ∧ (¬ (Var 3))) ∧ ((Var 4) => (Var 3))) whole-sat
  ≡ just true
random-1000-wsat = refl
