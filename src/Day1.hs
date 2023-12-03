module Day1
    ( part1
    ) where

import Data.Maybe
import Data.Char
import Data.List

part1 :: [String] -> String
part1 puzzleLines = show $ sum $ map extractCalibrationValue puzzleLines


extractCalibrationValue :: String -> Integer
extractCalibrationValue puzzleLine = read $ firstDigit ++ lastDigit where
    firstDigit = maybeToList $ find isDigit puzzleLine
    lastDigit = maybeToList $ find isDigit $ reverse puzzleLine
