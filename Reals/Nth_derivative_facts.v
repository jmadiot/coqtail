Require Import Reals.
Require Import C_n_def C_n_facts.
Require Import Ranalysis_def Rfunction_def Rextensionality.
Require Import Nth_derivative_def.

Open Local Scope R_scope.

(** * Extensionality of nth_derive. *)

Lemma nth_derive_ext : forall (n : nat) (f g : R -> R)
  (pr1 : C n f) (pr2 : C n g), f == g ->
  nth_derive f pr1 == nth_derive g pr2.
Proof.
intro n ; induction n ; intros ; simpl ;
 [| apply IHn ; apply derive_ext] ; assumption.
Qed.

Lemma nth_derive'_ext : forall (f g : R -> R) (k m n : nat)
  (pr1 : C k f) (pr2 : C m g) (nlek : (n <= k)%nat)
  (nlem : (n <= m)%nat), f == g ->
  nth_derive' n f pr1 nlek == nth_derive' n g pr2 nlem.
Proof.
intros ; unfold nth_derive' ; intro x ; apply nth_derive_ext ;
 assumption.
Qed.

(** * nth_derive is not proof-sensible. *)

Lemma nth_derive_PI : forall (n : nat) (f : R -> R) (pr1 pr2 : C n f),
  nth_derive f pr1 == nth_derive f pr2.
Proof.
intros ; apply nth_derive_ext ; intro x ; reflexivity.
Qed.

Lemma nth_derive'_PI : forall {k m n : nat} (f : R -> R)
 (pr1 : C k f) (pr2 : C m f) (nlek : (n <= k)%nat) (nlem : (n <= m)%nat),
  nth_derive' n f pr1 nlek == nth_derive' n f pr2 nlem.
Proof.
intros ; apply nth_derive'_ext ; intro x ; reflexivity.
Qed.

(** * Relation between nth_derive and derive. *)

Lemma derivable_nth_derive : forall n f (pr : derivable f) (pr1 : C (S n) f)
 (pr2 : C n (derive f pr)) l x, nth_derive (derive f pr) pr2 x = l ->
 nth_derive f pr1 x = l.
Proof.
intros n f pr pr1 pr2 l x Hl.
 simpl.
  rewrite nth_derive_ext with (g := derive f pr) (pr2 := pr2).
  assumption.
  intro ; unfold derive ; apply pr_nu_var ; reflexivity.
Qed.
