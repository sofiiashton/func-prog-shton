module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "Lab 1"

-- array :: [Int]
-- array = [1, 0, 7, 8, 1]

-- ranges :: [Int]
-- ranges = [1, 4]

-- calcSum :: Num a => [a] -> a
-- calcSum (x:xs) = x + calcSum xs
-- calcSum _ = 0

-- getSubArray :: [a] -> (Int, Int) -> [a]
-- getSubArray arr (start, end) = take (end - start + 1) (drop start arr)

-- calcSumInRange :: [Int] -> [Int] -> Int
-- calcSumInRange [] = 0
-- calcSumInRange arr range = sum []
