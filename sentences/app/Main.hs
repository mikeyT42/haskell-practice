module Main where

import System.Process (system)
import System.Exit

main :: IO ()
main = do
    errorCode <- system "clear"
    case errorCode of
        ExitSuccess -> do
            putStrLn "---------------------------------------------------------"
            putStrLn "\tWelcome To the Sentence Data Aggregator."
            putStrLn "---------------------------------------------------------"
        ExitFailure code -> do
            putStrLn $ "Failed to clear the screen: " ++ show code
            exitFailure
