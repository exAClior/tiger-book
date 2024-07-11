module CommonWords
  ( commonWords,
    removeSymbols,
    sortWords,
  )
where

import Data.Char (isLetter, isSpace, toLower)
import Data.List (sort)
import Prelude hiding (Word)

type Word = [Char]

type Code = (Int, Word)

type Text = [Char]

showCode :: Code -> [Char]
showCode (n, w) = w ++ ": " ++ show n ++ "\n"

removeSymbols :: Text -> Text
removeSymbols = filter (\x -> isLetter x || isSpace x)

sortWords :: [Word] -> [Word]
sortWords = sort

countRuns :: [Word] -> [Code]
countRuns [] = []
countRuns (w : ws) = (1 + length us, w) : countRuns vs where (us, vs) = span (== w) ws

sortCodes :: [Code] -> [Code]
sortCodes = reverse . sort

commonWords :: Int -> Text -> Text
commonWords n = concat . map showCode . take n . sortCodes . countRuns . sortWords . words . removeSymbols . map toLower
