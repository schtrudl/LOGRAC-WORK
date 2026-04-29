{-# OPTIONS --prop #-}

{- Instructions are subject to change -}

module proj where

open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _⊔_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Product using (_×_; _,_)

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

-- some helpers used in test cases
_=>_ : Formula → Formula → Formula
_=>_ p q = (¬ p) ∨ q
_<=>_ : Formula → Formula → Formula
_<=>_ p q = ((p => q) ∧ (q => p))

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

-- this will make writing easier
-- agda does not want overloading here
¬ₗ_ : Literal → Literal
¬ₗ_ (Var x) = ¬Var x
¬ₗ_ (¬Var x) = Var x

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

-- test case
phi : Formula
phi = (((Var 1) ∨ (Var 2)) ∧ (Var 3)) => (¬ (Var 4))

expected-nnf : NNF
expected-nnf = ((((lit (¬Var 1)) ∧ (lit (¬Var 2))) ∨ (lit (¬Var 3)))) ∨ (lit (¬Var 4))

test-nnf : to-nnf phi ≡ expected-nnf
test-nnf = refl

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

-- poiščemo največjo var
-- ker od tam naprej bomo dodajali svoje
largest-var : NNF → ℕ
largest-var (lit (Var x)) = x
largest-var (lit (¬Var x)) = x
largest-var (a ∧ b) = (largest-var a) ⊔ (largest-var b)
largest-var (a ∨ b) = (largest-var a) ⊔ (largest-var b)

-- tseytin-transformation-internal
-- n is first var available
-- returns (new first available var, builded CNF, this literal)
tti : ℕ → NNF → ℕ × CNF × Literal
tti n (lit x) = (n , dis (lit x) , x) -- ideally we would return empty CNF here
tti n (a ∧ b) =
    let
        la∧b = Literal.Var n
        n1 , aa , la = tti (suc n) a
        n2 , bb , lb = tti n1 b
    -- la∧b <=> la ∧ lb
    -- /\ ¬la∧b ∨ la /\ ¬la∧b ∨ lb /\ la∧b ∨ ¬la ∨ ¬la
    -- po zvesku drgač pa je tudi kle: https://en.wikipedia.org/wiki/Tseytin_transformation#Gate_sub-expressions
    in (n2 , (( (¬ₗ la∧b) ∨ (lit la)) ∧ (((¬ₗ la∧b) ∨ (lit lb)) ∧ (dis ((¬ₗ la) ∨ ((¬ₗ lb) ∨ (lit la∧b)))))) , la∧b)
tti n (a ∨ b) =
    let
        la∨b = Literal.Var n
        n1 , aa , la = tti (suc n) a
        n2 , bb , lb = tti n1 b
    -- la∨b <=> la ∨ lb
    -- /\ la∨b ∨ ¬la /\ la∨b ∨ ¬lb /\ ¬la∨b ∨ la ∨ lb
    in ( n2 , ( la∨b ∨ (lit (¬ₗ la))) ∧ ( ( la∨b ∨ (lit (¬ₗ lb))) ∧ ( dis ((¬ₗ la∨b) ∨ (la ∨ (lit (lb))) ))  ), la∨b )

tseytin-transformation : NNF → CNF
tseytin-transformation f =
    let _ , f , l = tti (suc(largest-var f)) f
    in (lit l) ∧ f -- we need to append root literal

-- TODO: test this