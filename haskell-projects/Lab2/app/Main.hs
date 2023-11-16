module Main (main) where

import Lib

data Song = Song { title :: String  
, artist :: String  
, album :: String  
, genre :: Genre
, year :: Int 
, songLength :: Int
} deriving (Show) -- параметри типу

type Genre = String -- синонім типу

genres :: [Genre]
genres = ["Pop", "Rap", "R&B", "Alternative", "Rock", "Soundtrack", "Country"]

formatLength :: Int -> (Int, Int)
formatLength seconds = (minutes, remainingSeconds)
  where
    minutes = seconds `div` 60
    remainingSeconds = seconds `mod` 60

main :: IO ()
main = do
    let favSong = Song "White Ferrari" "Frank Ocean" "Blonde" "Alternative" 2016 249
        (minutes, seconds) = formatLength (songLength favSong)
    putStrLn $ "My favorite song is " ++ title favSong ++ " by " ++ artist favSong ++ " from the album " ++ album favSong ++
        ". It is " ++ show minutes ++ " minutes and " ++ show seconds ++ " seconds long and was released in " ++ show (year favSong) ++ "."