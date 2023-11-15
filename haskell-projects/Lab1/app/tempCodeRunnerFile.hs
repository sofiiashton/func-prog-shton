module Main (main) where

calcResult :: Num a => [a] -> a
calcResult (x:xs) = x + calcResult xs  -- можна замінити на іншу операцію
calcResult _ = 0 -- 0 для додавання, 1 для множення

getSubArray :: [a] -> [Int] -> [a]
getSubArray array range = take (endIndex - startIndex) (drop startIndex array)
  where
    startIndex = range !! 0
    endIndex = range !! 1

main :: IO ()
main = do
    let arr :: [Int] 
        arr = [1, 0, 7, 8, 1]

        ranges :: [Int]
        ranges = [1, 4]

        op :: (Num a, Eq a) => a -> a -> a
        op = (+) -- можна замінити на іншу операцію

        subArray = getSubArray arr ranges
        result = calcResult subArray
        
    putStrLn $ "Початковий масив: " ++ show arr
    putStrLn $ "Масив в межах " ++ show ranges ++ ": " ++ show subArray
    putStrLn $ "Результат: " ++ show result