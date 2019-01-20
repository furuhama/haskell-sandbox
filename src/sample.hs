-- sample.hs

-- functions
head' :: [a] -> a
head' [] = error "List is Empty."
head' (x:xs) = x

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- definition of local variables
-- let b = 10
--     ls = ["nyan", "nyanko", "nyanpo"]

-- actual processes

-- print "Hello, Haskell!"
-- print (head' ls)
--
-- if b == 1 then print "b is 1"
--           else print "b is not 1"
--
-- print (fact 10)
-- print (fib 10)
