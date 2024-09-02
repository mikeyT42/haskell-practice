module Main where

main :: IO ()
main = do
  putStrLn "I am counting to ten!"
  countToTen
  putStrLn "Done counting."

countToTen :: IO ()
countToTen =
  let n = 0
   in print (count [0] n)

count :: [Integer] -> Integer -> [Integer]
count acc n =
  if last acc < 10
    then count (acc ++ [n + 1]) (n + 1)
    else acc
