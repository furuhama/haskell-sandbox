-- match.hs

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!!"
lucky x = "you're out of range"
-- lucky 10 #=> "you're out of range"
-- lucky 7 #=> "LUCKY NUMBER SEVEN!!"

fact :: (Integral a) => a -> a
fact 0 = 1
fact 1 = 1
fact n = n * fact (n-1)

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- `~~@` means the value before pattern matching
capital :: String -> String
capital "" = "Empty string"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "underweight"
    | bmi <= 25.0 = "normal"
    | bmi <= 30.0 = "fat"
    | otherwise   = "whale"

boolean :: Bool -> String
boolean arg
    | arg == True  = "It is True"
    | arg == False = "It is False"

-- `where` operator
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
    | bmi <= skinny = "underweight"
    | bmi <= normal = "normal"
    | bmi <= fat    = "fat"
    | otherwise     = "whale"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

initials :: String -> String -> String
initials firstname lastname = [f] ++ "." ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

-- `let` operator and `in` operator
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

-- Case expression
-- (pattern matching is syntax sugar for case expression)
descList :: [a] -> String
descList xs = case xs of [] -> "empty"
                         [x] -> "a singleton list"
                         xs -> "a longer list"
