module Main where

import System.Exit
import System.Process (system)

data RecursionControl = CONTINUE | STOP deriving (Enum)

main :: IO ()
main = do
  errorCode <- system "clear"
  case errorCode of
    ExitFailure code -> do
      putStrLn $ "Failed to clear the screen: " ++ show code
      exitFailure
    ExitSuccess -> do
      putStrLn "---------------------------------------------------------"
      putStrLn "\tWelcome To the Sentence Data Aggregator."
      putStrLn "---------------------------------------------------------"
      inputRecursion
      putStrLn "---------------------------------------------------------------"
      putStrLn "\t\tThank you and goodbye."
      putStrLn "---------------------------------------------------------------"

-- /////////////////////////////////////////////////////////////////////////////
inputRecursion :: IO ()
inputRecursion = do
    putStrLn "\n\nPlease input a sentence. If you want to exit, just hit the\n"
    putStrLn "key.\n"
    input <- getLine
    case validate input of
    True -> ""
    False -> ""
    putStrLn input

-- /////////////////////////////////////////////////////////////////////////////
validate :: String -> Bool
validate "" = False
validate "\n" = True
validate input = True
