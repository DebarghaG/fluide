import Data.Text as T
import Data.Typeable (Typeable)

import qualified Data.Text as T
import qualified Data.Map as Map

import Control.Exception
import Control.Monad.Reader


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


type ValCtx = Map.Map T.Text LispVal
type FnCtx  = Map.Map T.Text LispVal
