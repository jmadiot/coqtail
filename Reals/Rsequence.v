(*
(C) Copyright 2010, COQTAIL team

Project Info: http://sourceforge.net/projects/coqtail/

This library is free software; you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.

This library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.
*)

(** Common definitions of real sequences. *)
Require Export Reals.

Delimit Scope Rseq_scope with Rseq.

Open Local Scope R_scope.
Open Local Scope Rseq_scope.

Definition Rseq := nat -> R.

Implicit Type n : nat.
Implicit Type r : R.
Implicit Type An Bn : Rseq.

(** * Morphism of functions on R to sequences. *)

Definition Rseq_constant r := (fun n => r).

Coercion Rseq_constant : R >-> Funclass.

Definition Rseq_plus An Bn n := An n + Bn n.
Definition Rseq_mult An Bn n := An n * Bn n.
Definition Rseq_opp An n := Ropp (An n).
Definition Rseq_inv An n := Rinv (An n).

Infix "+" := Rseq_plus : Rseq_scope.
Infix "*" := Rseq_mult : Rseq_scope.
Notation "- u" := (Rseq_opp u) : Rseq_scope.
Notation "/ u" := (Rseq_inv u) : Rseq_scope.

Definition Rseq_minus An Bn n := An n - Bn n.
Definition Rseq_div An Bn n := An n / Bn n.
Definition Rseq_abs An n := Rabs (An n).

Notation "'|' Un '|'" := (Rseq_abs Un) (at level 39, format "'|' Un '|'") : Rseq_scope.
Infix "-" := Rseq_minus : Rseq_scope.
Infix "/" := Rseq_div : Rseq_scope.

(** * Extensionnal equality. *)

Definition Rseq_eq (Un Vn : Rseq) := forall n, Un n = Vn n.

Infix "==" := Rseq_eq (at level 70, no associativity) : Rseq_scope.

Arguments Scope Rseq_eq [Rseq_scope Rseq_scope].

(** * Various properties. *)

Definition Rseq_eventually (P : Rseq -> Prop) (Un : Rseq) :=
  exists N, P (fun n => Un (N + n)%nat).

Definition Rseq_eventually2 (P : Rseq -> Rseq -> Prop) (Un Vn : Rseq) :=
  exists N, P (fun n => Un (N + n)%nat) (fun n => Vn (N + n)%nat).

Definition Rseq_neq_0 Un := forall n, Un n <> 0.

Definition Rseq_growing Un := forall n,  Un n <= Un (S n).

Definition Rseq_strictly_growing Un := forall n, Un n < Un (S n).

Definition Rseq_decreasing Un := forall n, Un (S n) <= Un n.

Definition Rseq_strictly_decreasing Un := forall n, Un (S n) < Un n.

Definition Rseq_bound_max Un M := forall n, Un n <= M.

Definition Rseq_bound_min Un m := forall n, m <= Un n.

Definition Rseq_bound Un M := forall n, Rabs (Un n) <= M.

Definition Rseq_le Un Vn := forall n, Un n <= Vn n.

Definition Rseq_shift (Un:Rseq) n := Un (S n).

(** * Convergence of sequences. *)

Definition Rseq_cv Un l :=
  forall eps,
    eps > 0 ->
    exists N, (forall n, (n >= N)%nat -> R_dist (Un n) l < eps).

Definition Rseq_cv_pos_infty Un :=
  forall M,
    exists N, forall n, (n >= N)%nat -> M < Un n.

Definition Rseq_cv_neg_infty Un :=
  forall M,
    exists N, forall n, (n >= N)%nat -> Un n < M.

(** * Landau relations on sequences. *)

Definition Rseq_big_O Un Vn :=
  exists K, K >= 0 /\ exists N, forall n, (n >= N)%nat -> Rabs (Un n) <= K * Rabs (Vn n).

Definition Rseq_little_O Un Vn :=
  forall eps, eps > 0 -> exists N, forall n, (n >= N)%nat -> Rabs (Un n) <= eps * Rabs (Vn n).

Definition Rseq_equiv Un Vn := Rseq_little_O (Un - Vn) Un.

Notation "Un = 'O' ( Vn )" := (Rseq_big_O Un Vn) (at level 39, format "Un  =  'O' ( Vn )") : Rseq_scope.
Notation "Un = 'o' ( Vn )" := (Rseq_little_O Un Vn) (at level 40, format "Un  =  'o' ( Vn )") : Rseq_scope.
Notation "Un ~ Vn" := (Rseq_equiv Un Vn) (at level 5) : Rseq_scope.

Arguments Scope Rseq_big_O [Rseq_scope Rseq_scope].
Arguments Scope Rseq_little_O [Rseq_scope Rseq_scope].
Arguments Scope Rseq_equiv [Rseq_scope Rseq_scope].

(** * Usual sequences. *)

Definition Rseq_poly d n := (INR n) ^ d.

Definition Rseq_inv_poly d n :=
match n with
  | 0 => 0
  | _ => (/ INR n) ^ d
end.

Definition Rseq_pow r n := r ^ n.

Definition Rseq_fact n := INR (fact n).

Create HintDb Rseq.
