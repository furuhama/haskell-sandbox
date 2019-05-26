-- Recursion

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "cannot take maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail' = x
    | otherwise = maxTail'
    where maxTail' = maximum' xs

maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "cannot take maximum of empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n - 1) x
-- replicate' 3 3
-- [3,3,3]

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Create infinite list
repeat' :: a -> [a]
repeat' x = x:repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem' a xs

qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) =
    let smallerSorted = qsort [a | a <- xs, a <= x]
        biggerSorted = qsort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted