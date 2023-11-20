module Main (main) where

fix :: (a -> a) -> a
fix f = f (fix f)

fac' :: (Integer -> Integer) -> Integer -> Integer
fac' f n = if n == 0 then 1 else n * f (n-1)

fac :: Integer -> Integer
fac = fix fac'

main :: IO ()
main = do
  putStrLn "Обчислення факторіалу числа 5 за допомогою Y-комбінатора."
  putStrLn "Результат:"
  print (fac 5)