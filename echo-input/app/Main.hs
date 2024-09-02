module Main where

main :: IO ()
main = do
  putStrLn "Please input a string to echo it."
  input <- getLine
  putStrLn input
  main
