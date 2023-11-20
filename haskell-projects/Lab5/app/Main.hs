main :: IO ()
main = do
  putStrLn "Задумайте число від 0 до 99"
  result <- guessNumber 0 99
  case result of
    Just x -> putStrLn $ "Вгадане число: " ++ show x
    Nothing -> putStrLn "Щось пішло не так."

guessNumber :: Int -> Int -> IO (Maybe Int)
guessNumber low high
  | low > high = return Nothing
  | otherwise = do
      let mid = (low + high) `div` 2
      putStrLn $ "Задумане число менше чи рівне " ++ show mid ++ "? (Yes/No)"
      response <- getLine
      case response of
        "Yes" -> if mid == high then return (Just mid) else guessNumber low mid
        "No" -> guessNumber (mid + 1) high
        _ -> putStrLn "Будь ласка, введіть 'Yes' або 'No'." >> guessNumber low high