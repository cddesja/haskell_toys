-- This is series of toy Haskell functions that go along with 
-- Learn you Haskell for Great Good

-- Chapter 1

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
	then x
	else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conan'OBrien = "It's a me, Conan O'Brien"

factorial :: Integer -> Integer
factorial n = product[1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

-- As-patterns example
firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- Guards example
temperature :: Double -> String
temperature temp
    | temp <= 0 = "Better get your heavy coat!"
    | temp <= 10 = "Lighter coat with gloves and hats will do."
    | temp <= 20 = "Do I need a coat? Better check the wind!"
    | otherwise = "Global warming!"

tempConv :: => Double -> Boolean 

