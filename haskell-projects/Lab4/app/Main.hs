module Main (main) where

getProduct :: Int -> (Int -> (Int -> (Int -> (Int -> Int))))
getProduct = \a -> \b -> \c -> \d -> \e -> a * b * c * d * e

main :: IO ()
main = do
    let partial1 = getProduct 2
    let partial2 = partial1 3
    let partial3 = partial2 4
    let partial4 = partial3 5

    let result = partial4 6
    
    putStrLn $ "Добуток п'яти натуральних чисел: " ++ show result