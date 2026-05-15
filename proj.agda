{- Instructions are subject to change -}

module proj where

open import Data.Empty using (⊥; ⊥-elim)
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

open import Relation.Binary using (Decidable; DecidableEquality)
open import Data.List using (List; []; _∷_; _++_; length; map)
open import Data.Maybe using (Maybe; nothing; just)
open import Relation.Nullary using (Dec; yes; no; ¬_)
open import Data.List.Relation.Unary.Any using (Any; any?; here; there)
open import Data.Bool using (Bool; true; false; not)

record DecType : Set₁ where
    field
        carr   : Set
        test-≡ : (x y : carr) → Dec (x ≡ y)

open DecType

module AssocList (K : DecType) (V : Set) where

    Assoc : Set
    Assoc = List (carr K × V)

    _∈_ : carr K → Assoc → Set
    k ∈ kvs = Any (λ (key , _) → k ≡ key) kvs

    lookup : {k : carr K} {kvs : Assoc} → k ∈ kvs → V
    lookup {k} {((key , v) ∷ kvs)} (here p) = v
    lookup {k} {((key , v) ∷ kvs)} (there p) = lookup {k} {kvs} p

    _∈?_ : (k : carr K) → (kvs : Assoc) → Dec (k ∈ kvs)
    k ∈? kvs = any? (λ (key , _) → test-≡ K k key) kvs

    _‼_ : (kvs : Assoc) → (k : carr K) → Maybe V
    [] ‼ k = nothing
    ((key , v) ∷ kvs) ‼ k with test-≡ K k key
    ... | yes _ = just v
    ... | no  _ = kvs ‼ k

    _[_]≔_ : Assoc → carr K → V → Assoc
    [] [ k ]≔ v = (k , v) ∷ []
    ((key , val) ∷ kvs) [ k ]≔ v with test-≡ K k key
    ... | yes _ = (k , v) ∷ kvs
    ... | no  _ = (key , val) ∷ (kvs [ k ]≔ v)

NatDec : DecType
NatDec = record{carr   = ℕ; test-≡ = Data.Nat._≟_}

open AssocList NatDec Bool

Assignment : Set
Assignment = Assoc

{-
Problem 5 (*). Define an evaluation function eval ∶ Assignment → Formula → Maybe Bool
assigning to each assignment of variables and formula its truth value.
-}
eval-lit : Assignment → Literal → Maybe Bool

eval-lit σ (Var x) with σ ‼ x
... | nothing = nothing
... | just b  = just b

eval-lit σ (¬Var x) with σ ‼ x
... | nothing = nothing
... | just b  = just (not b)

eval : Assignment → Formula → Maybe Bool

eval σ (Var x) = eval-lit σ (Literal.Var x)
eval σ (¬ Var x) = eval-lit σ (Literal.¬Var x)

eval σ (¬ x) with eval σ x
... | nothing = nothing
... | just x  = just (not x)

eval σ (x ∧ y) with eval σ x | eval σ y
... | just x | just y = just (x Data.Bool.∧ y)
... | _      | _      = nothing

eval σ (x ∨ y) with eval σ x | eval σ y
... | just x | just y = just (x Data.Bool.∨ y)
... | _      | _      = nothing

{-
Problem 6 (*). Define an evaluation function eval-nnf ∶ Assignment → NNF → Maybe Bool
assigning to each assignment of variables and negation normal from formula its truth value.
-}

eval-nnf : Assignment → NNF → Maybe Bool

eval-nnf σ (lit l) = eval-lit σ l

eval-nnf σ (x ∧ y) with eval-nnf σ x | eval-nnf σ y
... | just x | just y = just (x Data.Bool.∧ y)
... | _      | _      = nothing

eval-nnf σ (x ∨ y) with eval-nnf σ x | eval-nnf σ y
... | just x | just y = just (x Data.Bool.∨ y)
... | _      | _      = nothing

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

{- Helpers for case coverage, implement these into the earlier two cases (literal): -}

eval-disj : Assignment → Disjunct → Maybe Bool
eval-disj σ (lit l) = eval-lit σ l
eval-disj σ (x ∨ xs) with eval-lit σ x | eval-disj σ xs
... | just a | just b = just (a Data.Bool.∨ b)
... | _      | _      = nothing

eval-cnf : Assignment → CNF → Maybe Bool
eval-cnf σ (dis d) = eval-disj σ d
eval-cnf σ (d ∧ rest) with eval-disj σ d | eval-cnf σ rest
... | just a | just b = just (a Data.Bool.∧ b)
... | _      | _      = nothing

{-
Problem 9 (**/***). Write an SAT solver for CNFformulas.
Note: a more complex implementation (e. g. DPLL) will be graded higher
-}

{- Truth table solver: -}
vars : CNF → Assignment

vars-lit : Literal → Assignment → Assignment
vars-lit (Var x) acc = acc [ x ]≔ true
vars-lit (¬Var x) acc = acc [ x ]≔ false

vars-disj : Disjunct → Assignment → Assignment
vars-disj (lit l) acc = vars-lit l acc
vars-disj (l ∨ rest) acc = vars-disj rest (vars-lit l acc)

vars (dis d) = vars-disj d []
vars (d ∧ rest) = vars-disj d (vars rest)

permutations : Assoc -> List Assignment

permutations [] = [] ∷ []
permutations ((k , _) ∷ rest) =
    let
        perms = permutations rest
        with-true = map (λ ass -> ass [ k ]≔ true) perms
        with-false = map (λ ass -> ass [ k ]≔ false) perms
    in with-true ++ with-false

sat-assignments : CNF → List Assignment → Maybe Assignment
sat-assignments f [] = nothing
sat-assignments f (σ ∷ rest) with eval-cnf σ f
... | just true = just σ
... | _ = sat-assignments f rest

SAT : CNF → Maybe Assignment
SAT f = (sat-assignments f (permutations (vars f)))

-- DPLL

{-
HALT:
- število literalov če je literal notr, potem bo simplfy zmanšal število literalov

-}

is-unit : Disjunct → Maybe Literal
is-unit (lit l) = just l
is-unit (_ ∨ _) = nothing

find-unit : CNF → Maybe Literal
find-unit (dis d) = is-unit d
find-unit (d ∧ c) with is-unit d
... | just l = just l
... | nothing = find-unit c

open import Data.Nat.Base using (_≡ᵇ_)

lit-eq : Literal → Literal → Bool
lit-eq (Var x) (Var y) = x ≡ᵇ y
lit-eq (Var _) (¬Var _) = false
lit-eq (¬Var _) (Var _) = false
lit-eq (¬Var x) (¬Var y) = x ≡ᵇ y

open import Data.Bool.Base renaming (_∨_ to _||_; _∧_ to _&&_)
is-pure-dis : Disjunct → Literal → Bool
is-pure-dis (lit x) l = lit-eq x l
is-pure-dis (x ∨ d) l with (lit-eq x l)
... | true = is-pure-dis d l
... | false = false

is-pure : CNF → Literal → Bool
is-pure (dis x) l = is-pure-dis x l
is-pure (x ∧ c) l with (is-pure-dis x l)
... | true = is-pure c l
... | false = false

-- TODO(perf): use nodup for
find-all-literals-dis : Disjunct → List Literal
find-all-literals-dis (lit l) = l ∷ []
find-all-literals-dis (l ∨ d) = l ∷ (find-all-literals-dis d)

find-all-literals : CNF → List Literal
find-all-literals (dis d) = find-all-literals-dis d
find-all-literals (d ∧ c) = (find-all-literals-dis d) ++ (find-all-literals c)

find-pure-in-all-literals : CNF → List Literal → Maybe Literal
find-pure-in-all-literals _ [] = nothing
find-pure-in-all-literals c (l ∷ lst) with (is-pure c l)
... | true = just l
... | false = find-pure-in-all-literals c lst

find-pure : CNF → Maybe Literal
find-pure c = find-pure-in-all-literals c (find-all-literals c)

data Clause (A : Set) : Set where
  sat : Clause A -- all was reduced
  unsat : Clause A -- unsatidfyable
  some : A → Clause A

-- if it contains literal we can erase whole clause
-- otherwise we might just reduced the clause
simply-lit : Literal → Literal → Clause Literal
simply-lit (Var x) (Var y) with x ≡ᵇ y
... | true = sat
... | false = some (Var x)
simply-lit (Var x) (¬Var y) with x ≡ᵇ y
... | true = unsat
... | false = some (Var x)
simply-lit (¬Var x) (Var y) with x ≡ᵇ y
... | true = unsat
... | false = some (¬Var x)
simply-lit (¬Var x) (¬Var y) with x ≡ᵇ y
... | true = sat
... | false = some (¬Var x)

simplfy-dis : Disjunct → Literal → Clause Disjunct
simplfy-dis (lit x) l with (simply-lit x l)
... | sat = sat
... | unsat = unsat
... | some x = some (lit x)
simplfy-dis (x ∨ d) l with (simply-lit x l)
simplfy-dis (x ∨ d) l | sat = sat
simplfy-dis (x ∨ d) l | unsat with (simplfy-dis d l)
... | sat = sat
... | unsat = unsat
... | some d' = some (d')
simplfy-dis (x ∨ d) l | some x' with (simplfy-dis d l)
... | sat = sat
... | unsat = some (lit x')
... | some d' = some (x' ∨ d')

-- retruns nothing if empty => all done
simplfy : CNF → Literal → Clause CNF
simplfy (dis d) l with (simplfy-dis d l)
... | sat = sat
... | unsat = unsat
... | some d = some (dis d)
simplfy (d ∧ c) l with (simplfy-dis d l)
simplfy (d ∧ c) l | unsat = unsat
simplfy (d ∧ c) l | sat with (simplfy c l)
... | sat = sat
... | unsat = unsat
... | some c' = some c'
simplfy (d ∧ c) l | some d' with (simplfy c l)
... | sat = some (dis d')
... | unsat = unsat
... | some c' = some (d' ∧ c')

pick-a-lit : CNF → Literal
pick-a-lit (dis (lit l)) = l
pick-a-lit (dis (l ∨ _)) = l
pick-a-lit (lit l ∧ c) = l
pick-a-lit ((l ∨ _) ∧ _) = l

-- TODO: Maybe Assignment

DPLL-internal : CNF → ℕ → Assignment → Maybe Assignment
DPLL-internal _ zero _ = nothing
DPLL-internal c (suc fuel) a with find-unit c
DPLL-internal c (suc fuel) a | just l with (simplfy c l)
... | some c' = DPLL-internal c' fuel (vars-lit l a)
... | sat     = just (vars-lit l a)
... | unsat   = nothing
DPLL-internal c (suc fuel) a | nothing with (find-pure c)
... | just l with simplfy c l
...   | some c' = DPLL-internal c' fuel (vars-lit l a)
...   | sat     = just (vars-lit l a)
...   | unsat   = nothing
DPLL-internal c (suc fuel) a | nothing | nothing with (pick-a-lit c)
... | l with (simplfy c l)
...   | some c' = DPLL-internal c' fuel (vars-lit l a)
...   | sat     = just (vars-lit l a)
...   | unsat with (simplfy c (¬ₗ l))
...     | some c' = DPLL-internal c' fuel (vars-lit (¬ₗ l) a)
...     | sat     = just (vars-lit (¬ₗ l) a)
...     | unsat   = nothing

count-literals-dis : Disjunct → ℕ
count-literals-dis (lit _) = 1
count-literals-dis (_ ∨ d) = 1 + (count-literals-dis d)

count-literals : CNF → ℕ
count-literals (dis d) = count-literals-dis d
count-literals (d ∧ c) = (count-literals-dis d) + (count-literals c)

DPLL : CNF → Maybe Assignment
DPLL c = DPLL-internal c (suc (count-literals c)) []

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
