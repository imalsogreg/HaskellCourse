module HaskellCourse.AE.AST where

import HaskellCourse.Util

{-
Grammar:

e    := int | bool | prim | (e e) | (e e e)
prim := +|-|*|<|==|!
-}

data Prim = Add | Sub | Mult | LessThan | EqualTo | Not 
  deriving Show

data Exp = LitInt Int | LitBool Bool | PrimExp Prim | App Exp Exp
  deriving Show

unaryApp :: Exp -> Exp -> Exp
unaryApp f a = App f a

binaryApp :: Exp -> Exp -> Exp -> Exp
binaryApp f a b = App (App f a) b 
