gcd' :: Integer -> Integer -> Integer
gcd' m 0 = m
gcd' m n = gcd' n (m `mod` n)

result :: Integer
result = gcd' 9 10

main :: IO ()
main = do
  putStrLn $ "gcd 9 10 = " ++ show result