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
inputRecursion :: IO () -> RecursionControl
inputRecursion = 
