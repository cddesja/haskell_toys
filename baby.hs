-- This function doubles a number
doubleMe x = x + x

-- This function doubles two numbers and then sums them together
doubleUs x y = x*2 + y*2

-- This function only double numbers less than 100
doubleSmallNumber x = if x > 100
	then x
	else doubleMe x

-- This function prints BOOM! for all odd values less than 10 and BANG! for all odd values greater than 10
-- It discards even values
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Calculate length of a list
length' xs = sum [1 | _ <- xs]  -- replaces every element of list xs with a 1

-- extract lower case
extractLowercase st = [c | c <- st, c `elem` ['a'..'z']]

let rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]