module Day1
    ( part1
    ) where

part1 :: [String] -> String
part1 puzzleLines = show $ sum $ map extractCalibrationValue puzzleLines


extractCalibrationValue :: String -> Integer
extractCalibrationValue _ = 1
