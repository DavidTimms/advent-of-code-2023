module Main (main) where

import System.Environment
import System.Exit
import qualified Day1

type Day = Integer

main :: IO ()
main = do
    args <- getArgs
    day <- parseArgs args
    puzzleInput <- readPuzzleInput day
    let result = Day1.part1 puzzleInput
    putStrLn result

parseArgs :: [String] -> IO Day
parseArgs [day] = return $ read day
parseArgs _ = die "Unexpected input"
 
readPuzzleInput :: Day -> IO [String]
readPuzzleInput 1 = fmap lines $ readFile "./inputs/day1.txt" 
readPuzzleInput _ = die "Day not implemented yet"
