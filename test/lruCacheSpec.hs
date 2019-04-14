{-# LANGUAGE ImplicitPrelude #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import LRUCache

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =  
  testGroup "LRU Cache Spec" [
      dummyTest
  ]

dummyTest :: TestTree
dummyTest = 
  testCase "Dummy test" $ 1 @?= 1    
