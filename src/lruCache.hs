{-# language BangPatterns #-}
module LRUCache where

import Control.Applicative(Applicative((<*>), pure), liftA2)
import Data.Functor((<$>))
import Data.Word
import Data.HashPSQ
import Prelude hiding (lookup)

type Priority = Word64

data Cache k v = Cache 
  { cCapacity :: !Int,
    cSize     :: !Int, 
    cTick     :: !Priority,
    cQueue    :: !(HashPSQ k Priority v)
  } deriving (Show, Eq)

trim :: 