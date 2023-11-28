module Main (main) where

main :: IO ()
main = print (fac 6)

fix :: (a -> a) -> a
fix f = let x = f x in x

fac' :: (Integer -> Integer) -> Integer -> Integer
fac' f n =
  if n == 0 then 1
  else n * f (n - 1)

fac :: Integer -> Integer
fac = fix fac'