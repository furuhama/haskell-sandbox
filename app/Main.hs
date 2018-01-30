-- haskell sample script
module Main where

-- import Lib
-- main :: IO ()

-- functions
head' :: [a] -> a
head' [] = error "List is Empty."
head' (x:xs) = x

main = do
    -- definition of local variables
    let b = 10
        ls = ["nyan", "nyanko", "nyanpo"]

    -- actual process
    print "Hello, Haskell!"

    print (head' ls)

    if b == 1 then print "hoge" else print "fuga"

