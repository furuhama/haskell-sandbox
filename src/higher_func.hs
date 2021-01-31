-- Higher Order Functions

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- applyTwice (+3) 10
-- 16

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys

-- zipWith' (+) [1, 2, 3, 4] [5, 6, 6, 7]
-- [6,8,9,11]

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

-- (flip' zip) [1, 2, 3, 4, 5] "hello"
-- [('h',1),('e',2),('l',3),('l',4),('o',5)]

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x : xs) = f x : map' f xs

-- map' (+3) [1, 2, 3, 4]
-- [4,5,6,7]
-- map' (map' (^2)) [[1,2],[3,4,5,6],[5,6,7]]
-- [[1,4],[9,16,25,36],[25,36,49]]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x : xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

-- filter' (>3) [1,5,3,57,2,5,7,3,1,3]
-- [5,57,5,7]

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1 .. 100]))

sum'' :: (Num a) => [a] -> a
sum'' xs = foldl (\acc x -> acc + x) 0 xs

-- $ operator means function application
-- use like this
-- maximum (map length (map chain [1..100]))
-- =>
-- maximum $ map length $ map chain [1..100]

-- . operator compose functions
-- use like this
-- maximum $ map length $ map chain [1..100]
-- =>
-- maximum $ map (length . chain) [1..100]
