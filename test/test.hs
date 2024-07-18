module Main (main) where

import TestCommonWords (removeSymbolsTest, dummyTest )

main = do
  putStrLn "Get my handy tests started!"
  defaultMain (testGroup "Common Words Tests" [dummyTest, removeSymbolsTest])

  -- https://github.com/haskell/aeson/blob/master/tests/Tests.hs
