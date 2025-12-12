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

Reserved Notation "x -> y"
  (
    at level 99,
    right associativity,
    y at level 200).

(** 型であるかどうかにより表記の解釈を変えるために << type_scope >> スコープを定義する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L133 >> の先にあるコードを参考にしている。 *)

Declare Scope type_scope.

(** << type_scope >> スコープの中で解釈することを指定できるようにするために << type_scope >> スコープに << type >> キーを束縛する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L134 >> の先にあるコードを参考にしている。 *)

Delimit Scope type_scope with type.

(** 型に関するスコープを定義するために << type_scope >> スコープに << Sortclass >> 強制変換クラスを束縛する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L135 >> の先にあるコードを参考にしている。 *)

Bind Scope type_scope with Sortclass.

(** << type_scope >> スコープを使用するために << type_scope >> スコープを開く。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Notations.v#L139 >> の先にあるコードを参考にしている。 *)

Open Scope type_scope.

(** 関数の型を容易に表記するために << x -> y >> 表記を定義する。 << https://github.com/rocq-prover/rocq/blob/165e537238812a2eef53e3eda174dff95b94bf7d/theories/Corelib/Init/Logic.v#L16 >> の先にあるコードを参考にしている。 *)

Notation "A -> B"
  := (forall (_ : A), B)
  : type_scope.

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

Definition idmap
  : forall A : Set, A -> A
  := id.

Definition identity_map
  : forall A : Set, A -> A
  := id.

Definition identity_mapping
  : forall A : Set, A -> A
  := id.

Definition 恒等関数
  : forall A : Set, A -> A
  := id.

Definition 恒等関数を作る
  : forall A : Set, A -> A
  := id.

(** 定数関数を生成する関数を定義する。 *)

Definition const
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  :=
    fun A : Set =>
    fun B : Set =>
    fun x : B =>
    fun y : A =>
    x.

Definition constant_function
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  := const.

Definition constant_map
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  := const.

Definition constant_mapping
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  := const.

Definition 定数関数
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  := const.

Definition 定数関数を作る
  :
    forall A : Set,
    forall B : Set,
    B -> A -> B
  := const.

(** 関数合成を定義する。 *)

Definition comp
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  :=
    fun A : Set =>
    fun B : Set =>
    fun C : Set =>
    fun f : B -> C =>
    fun g : A -> B =>
    fun x : A =>
    f (g x).

Definition compose
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

Definition composition
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

Definition function_composition
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

Definition 合成
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

Definition 合成する
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

Definition 関数合成
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> C) -> (A -> B) -> A -> C
  := comp.

(** 関数逆順合成を定義する。 *)

Definition compR
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  :=
    fun A : Set =>
    fun B : Set =>
    fun C : Set =>
    fun f : A -> B =>
    fun g : B -> C =>
    fun x : A =>
    g (f x).

Definition compose_reverse
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  := compR.

Definition reverse_composition
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  := compR.

Definition function_reverse_composition
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  := compR.

Definition 逆順合成
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  := compR.

Definition 関数逆順合成
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (A -> B) -> (B -> C) -> A -> C
  := compR.

(** 関数適用を定義する。 *)

Definition ap
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  :=
    fun A : Set =>
    fun B : Set =>
    fun f : A -> B =>
    fun x : A =>
    f x.

Definition apply
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

Definition application
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

Definition function_application
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

Definition 適用
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

Definition 適用する
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

Definition 関数適用
  :
    forall A : Set,
    forall B : Set,
    (A -> B) -> A -> B
  := ap.

(** 関数逆順適用を定義する。 *)

Definition apR
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  :=
    fun A : Set =>
    fun B : Set =>
    fun x : A =>
    fun f : A -> B =>
    f x.

Definition apply_reverse
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  := apR.

Definition reverse_application
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  := apR.
Definition function_reverse_application
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  := apR.

Definition 逆順適用
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  := apR.

Definition 関数逆順適用
  :
    forall A : Set,
    forall B : Set,
    A -> (A -> B) -> B
  := apR.

(** 依存関数適用を定義する。 *)

Definition apD
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  :=
    fun A : Set =>
    fun B : A -> Set =>
    fun f : forall x : A, B x =>
    fun x : A =>
    f x.

Definition apply_dependently
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  := apD.

Definition dependent_application
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  := apD.

Definition dependent_function_application
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  := apD.

Definition 依存適用
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  := apD.

Definition 依存関数適用
  :
    forall A : Set,
    forall B : A -> Set,
    (forall x : A, B x) ->
    forall x : A,
    B x
  := apD.

(** 依存関数逆順適用を定義する。 *)

Definition apDR
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  :=
    fun A : Set =>
    fun B : A -> Set =>
    fun x : A =>
    fun f : forall x : A, B x =>
    f x.

Definition apply_reverse_dependently
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  := apDR.

Definition dependent_reverse_application
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  := apDR.

Definition dependent_function_reverse_application
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  := apDR.

Definition 依存逆順適用
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  := apDR.

Definition 依存関数逆順適用
  :
    forall A : Set,
    forall B : A -> Set,
    forall x : A,
    (forall x : A, B x) ->
    B x
  := apDR.

(** 引数の順番を入れ替える関数を定義する。 *)

Definition flip
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> A -> C) -> A -> B -> C
  :=
    fun A : Set =>
    fun B : Set =>
    fun C : Set =>
    fun f : B -> A -> C =>
    fun x : A =>
    fun y : B =>
    f y x.

Definition ひっくり返す
  :
    forall A : Set,
    forall B : Set,
    forall C : Set,
    (B -> A -> C) -> A -> B -> C
  := flip.
