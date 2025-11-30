(** ** 基本設定 *)

(** 余帰納型を上手に取り扱うために << Primitive Projections >> 機能を有効にする。 *)

#[export]
Set Primitive Projections.

(** 宇宙多相を取り扱うために << Universe Polymoorphism >> 機能を有効にする。 *)

#[export]
Set Universe Polymorphism.

(** 帰納型における宇宙の階層を上手に取り扱うために << Polymorphic Inductive Cumulativity >> 機能を有効にする。 *)

#[export]
Set Polymorphic Inductive Cumulativity.

(** ** 構文設定 *)

(** 必要ない関数を Rocq が自動で定義するのを防ぐために << Elimination Schemes >> 機能を無効にする。 *)

#[export]
Unset Elimination Schemes.

(** ** 表示設定 *)

(** 宇宙の階層を表示するために << Printing Universes >> 機能を有効にする。 *)

#[export]
Set Printing Universes.

(** ** 基本記法 *)

(** 演算子の優先順位を統一するために << x -> y >> 表記を予約する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L15 >> の先にあるコードを参考にしている。  *)

Reserved Notation "x -> y" (at level 99, right associativity, y at level 200).

(** 型であるかどうかにより表記の解釈を変えるために << type_scope >> スコープを定義する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L133 >> の先にあるコードを参考にしている。 *)

Declare Scope type_scope.

(** << type_scope >> スコープの中で解釈することを指定できるようにするために << type_scope >> スコープに << type >> キーを束縛する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L134 >> の先にあるコードを参考にしている。 *)

Delimit Scope type_scope with type.

(** 型に関するスコープを定義するために << type_scope >> スコープに << Sortclass >> 強制変換クラスを束縛する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L135 >> の先にあるコードを参考にしている。 *)

Bind Scope type_scope with Sortclass.

(** << type_scope >> スコープを使用するために << type_scope >> スコープを開く。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L139 >> の先にあるコードを参考にしている。 *)

Open Scope type_scope.

(** 関数の型を容易に表記するために << x -> y >> 表記を定義する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Logic.v#L16 >> の先にあるコードを参考にしている。 *)

Notation "A -> B" := (forall (_ : A), B) : type_scope.

(** 恒等関数を定義する。 *)

Definition id
  : forall A : Set, A -> A
  := fun A : Set => fun x : A => x.

Definition idfunc
  : forall A : Set, A -> A
  := id.

Definition identity_function
  : forall A : Set, A -> A
  := id.

Definition 恒等関数
  : forall A : Set, A -> A
  := id.
