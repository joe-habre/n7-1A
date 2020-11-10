(* This file is generated by Why3's Coq driver *)
(* Beware! Only edit allowed sections below    *)
Require Import BuiltIn.
Require BuiltIn.

(* Why3 assumption *)
Inductive liste (a:Type) :=
  | Nil : liste a
  | Cons : a -> (liste a) -> liste a.
Axiom liste_WhyType : forall (a:Type) {a_WT:WhyType a}, WhyType (liste a).
Existing Instance liste_WhyType.
Arguments Nil {a}.
Arguments Cons {a}.

(* Why3 assumption *)
Fixpoint append {a:Type} {a_WT:WhyType a} (l1:liste a)
  (l2:liste a) {struct l1}: liste a :=
  match l1 with
  | Nil => l2
  | Cons t q => Cons t (append q l2)
  end.

(* Why3 goal *)
Theorem append_Nil_left {a:Type} {a_WT:WhyType a} :
  forall (l:liste a), ((append (Nil : liste a) l) = l).
(* Why3 intros l. *)
Proof.
tauto.
Qed.

Print append_Nil_left.
