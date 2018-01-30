-- haskell sample script
module Main where

-- import Lib
-- main :: IO ()

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

main = do
    -- definition of local variables
    let b = 10
        ls = ["nyan", "nyanko", "nyanpo"]

    -- actual process
    print "Hello, Haskell!"

    print (head' ls)

    if b == 1 then print "hoge" else print "fuga"

    print (fact 10)

    print(fib 10)
