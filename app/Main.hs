module Main where

import qualified MyLib as ML
-- import qualified CommonWords as CW

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  ML.someFunc
