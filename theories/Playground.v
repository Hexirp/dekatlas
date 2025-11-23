(** ** 基本設定 *)

(** 余帰納型を上手に取り扱うために << Primitive Projections >> 機能を有効にする。 *)

#[export] Set Primitive Projections .

(** 宇宙多相を取り扱うために << Universe Polymoorphism >> 機能を有効にする。 *)

#[export] Set Universe Polymorphism .

(** 帰納型における宇宙の階層を上手に取り扱うために << Polymorphic Inductive Cumulativity >> 機能を有効にする。 *)

#[export] Set Polymorphic Inductive Cumulativity .

(** ** 構文設定 *)

(** 必要ない関数を Rocq が自動で定義するのを防ぐために << Elimination Schemes >> 機能を無効にする。 *)

#[export] Unset Elimination Schemes .

(** ** 表示設定 *)

(** 宇宙の階層を表示するために << Printing Universes >> 機能を有効にする。 *)

#[export] Set Printing Universes .
