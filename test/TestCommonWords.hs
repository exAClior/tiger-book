module TestCommonWords (removeSymbolsTest, dummyTest) where

import Test.Tasty
import Test.Tasty.HUnit

import CommonWords (removeSymbols)


removeSymbolsTest :: TestTree
removeSymbolsTest = testGroup "Remove Symbols Test"
  [ testCase "Remove Symbols Test" $ "Hello World" == (removeSymbols "H=el(**@#!%*(lo, W'or$$ld!") @?= True,
    testCase "Remove Symbols Test" $ "Bye bye" == (removeSymbols "H=el(**@#!%*(lo, W'or$$ld!") @?= False]

dummyTest :: TestTree
dummyTest = testCase "Dummy Test" $ 2==1 @?= True
