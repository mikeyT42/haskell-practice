module Main where

import System.Process (system)

main :: IO ()
main = do
    _ <- system "clear"
    putStrLn "Hello, Haskell!"
