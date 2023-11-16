module Main (main) where

counter :: Int -> (Int -> Int)
counter initial = 
    let increment = \result -> result + 1
    in increment

main :: IO ()
main = do
    let myCounter = counter 0

    let result1 = myCounter 0
    let result2 = myCounter result1
    let result3 = myCounter result2
    let result4 = myCounter result3
    let result5 = myCounter result4

    putStrLn $ "Виклик 1: " ++ show result1
    putStrLn $ "Виклик 2: " ++ show result2
    putStrLn $ "Виклик 3: " ++ show result3
    putStrLn $ "Виклик 4: " ++ show result4
    putStrLn $ "Виклик 5: " ++ show result5