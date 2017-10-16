(* This file is autogenerated from Karatsuba.v by remake_packages.py *)
Require Import Crypto.Specific.Framework.CurveParametersPackage.
Require Import Crypto.Specific.Framework.ArithmeticSynthesis.BasePackage.
Require Import Crypto.Specific.Framework.ArithmeticSynthesis.DefaultsPackage.
Require Export Crypto.Specific.Framework.ArithmeticSynthesis.Karatsuba.
Require Import Crypto.Specific.Framework.Packages.
Require Import Crypto.Util.TagList.


Ltac add_mul_sig pkg :=
  if_goldilocks
    pkg
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let half_sz := Tag.get pkg TAG.half_sz in
                   let mul_sig := fresh "mul_sig" in
                   let mul_sig := pose_mul_sig wt m base sz s c half_sz mul_sig in
                   Tag.update pkg TAG.mul_sig mul_sig)
    ltac:(fun _ => pkg)
    ().
Ltac add_square_sig pkg :=
  if_goldilocks
    pkg
    ltac:(fun _ => let sz := Tag.get pkg TAG.sz in
                   let m := Tag.get pkg TAG.m in
                   let wt := Tag.get pkg TAG.wt in
                   let mul_sig := Tag.get pkg TAG.mul_sig in
                   let square_sig := fresh "square_sig" in
                   let square_sig := pose_square_sig sz m wt mul_sig square_sig in
                   Tag.update pkg TAG.square_sig square_sig)
    ltac:(fun _ => pkg)
    ().
Ltac add_Karatsuba_package pkg :=
  let pkg := add_mul_sig pkg in
  let pkg := add_square_sig pkg in
  Tag.strip_subst_local pkg.


Module MakeKaratsubaPackage (PKG : PrePackage).
  Module Import MakeKaratsubaPackageInternal := MakePackageBase PKG.

End MakeKaratsubaPackage.
