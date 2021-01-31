-- type.hs

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]

addTwo :: Int -> Int -> Int
addTwo x y = x + y

-- Int is a 32 bit integer
fact :: Int -> Int
fact n = product [1 .. n]

-- Integer is non limited integer
fact' :: Integer -> Integer
fact' n = product [1 .. n]

circ :: Float -> Float
circ r = 2 * pi * r

circ' :: Double -> Double
circ' r = 2 * pi * r
