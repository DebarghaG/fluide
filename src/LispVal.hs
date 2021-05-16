import Data.Text as T
T.pack :: String -> Text
T.unpack :: Text -> String

module LispVal (
  LispVal(..),
  Eval(..),
  IFunc(..),
  EnvCtx(..),
  LispException(..),
  showVal,
) where

data IFunc = IFunc { fn :: [LispVal] -> Eval LispVal }
