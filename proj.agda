{-# OPTIONS --prop #-}

{- Instructions are subject to change -}

module proj where

open import Data.Nat using (ℕ; zero; suc; _+_; _*_)

{-
Problem 1 (*). Define a type of formulas called Formula, with the following grammar:
Formula → Var 𝑛
| ¬Formula
| Formula ∧ Formula
| Formula ∨ Formula
-}

data Formula : Set where
  Var : ℕ → Formula
  ¬_ : Formula → Formula
  _∧_ : Formula → Formula → Formula
  _∨_ : Formula → Formula → Formula

{-
Problem 2 (*). Define a type of negation normal form formulas called NNF, with the following
grammar:
Literal → Var 𝑛
| ¬Var 𝑛

NNF → Literal
| NNF ∧ NNF
| NNF ∨ NNF
-}

data Literal : Set where
    Var  : ℕ → Literal
    ¬Var : ℕ → Literal


data NNF : Set where
    lit : Literal → NNF
    _∧_ : NNF → NNF → NNF
    _∨_ : NNF → NNF → NNF

{-
Problem 3 (*). Construct a function to-nnf of type Formula → NNF that converts a formula
to an equivalent formula in negation normal form.
Note: You may find a more suitable name for the functions
-}
-- po domače: negacije je potrebno spustiti vse do spremeljivk oz. literalov

to-nnf : Formula → NNF

to-nnf (Var n) = lit (Literal.Var n)
to-nnf (¬ Var n) = lit (Literal.¬Var n)
to-nnf (¬ (¬ f)) = to-nnf f
-- demorgan
to-nnf (¬ (a ∧ b)) = (to-nnf (¬ a)) ∨ (to-nnf (¬ b))
to-nnf (¬ (a ∨ b)) = (to-nnf (¬ a)) ∧ (to-nnf (¬ b))
to-nnf (a ∧ b) = (to-nnf a) ∧ (to-nnf b)
to-nnf (a ∨ b) = (to-nnf a) ∨ (to-nnf b)

{-
Problem 4 (**). Copy the Assoc module from week 9 exercises and complete it to a fully
working implementation of an associative structure you want (associative list, dictionary, etc.).
For example, use the NoDup structure from the exercises.
Then use
open Assoc ℕ test-≡ Bool
Assignment : Set
Assignment = Assoc
Note: it is also OK to specialise the definitions to 𝐾 = ℕ and 𝑉 = Bool, for example to use
Fin 𝑛. You are also free to use the stdlib definitions like
open import Relation.Binary using (Decidable; DecidableEquality)
open import Data.List.Relation.Unary.Any using (Any; any?)
open import Data.List.Relation.Unary.All using (All; all?)
open import Relation.Nullary using (yes; no; ¬_; ¬?)
-}

{-
Problem 5 (*). Define an evaluation function eval ∶ Assignment → Formula → Maybe Bool
assigning to each assignment of variables and formula its truth value.
-}

{-
Problem 6 (*). Define an evaluation function eval-nnf ∶ Assignment → NNF → Maybe Bool
assigning to each assignment of variables and negation normal from formula its truth value.
-}

{-
Problem 7 (*). Define a type of conjunction normal form formulas called CNF, with the following
grammar:
Literal → Var 𝑛
| ¬Var 𝑛
Disjunct → Literal
| Literal ∨ Disjunct
CNF → Disjunct ∨ CNF
-}

-- literal defined in 2.
data Disjunct : Set where
    lit : Literal → Disjunct
    _∨_ : Literal → Disjunct → Disjunct

data CNF : Set where
    dis : Disjunct → CNF -- XXX: errata on table
    _∧_ : Disjunct → CNF → CNF -- XXX: errata on table

{-
Problem 8 (*). Define an evaluation function eval-cnf ∶ Assignment → CNF → Maybe Bool
assigning to each assignment of variables and conjunction normal from formula its truth value.
-}

{-
Problem 9 (**/***). Write an SAT solver for CNFformulas.
Note: a more complex implementation (e. g. DPLL) will be graded higher
-}

{-
Problem 10 (**/***). Write a function that converts an NNFformula to an equisatisfiable
CNFformula.
Note: a more complex implementation (e. g. Tseytin transformation) will be graded higher.
-}

