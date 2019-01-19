-- basic.hs

doubleMe x = x + x

doubleUs x y = x*2 + y*2

-- doubleUs with doubleMe function
doubleUs2 x y = doubleMe x + doubleMe y

doubleSmallNum x = if x > 100
                      then x
                      else x * 2

-- `'` is a valid character for variable names
conanO'Brien = "It's a-me, Conan O'Brien"

-- you can concatinate lists with `++` operator
lists = [1,2,3,4] ++ [5,6,7,8] -- [1,2,3,4,5,6,7,8]

-- `:` is a cons operator
lists2 = 'A':" SMALL CAT" -- "A SMALL CAT"
lists3 = 5:[1,2,3,4] -- [5,1,2,3,4]

-- `!!` is a index operator
e1 = "Steve Buscemi" !! 6 -- 'B'
e2 = [1,2,3,4] !! 1 -- 2

-- Compare lists
b1 = [3,2,1] > [2,1,0] -- True
b2 = [3,2,1] > [3,1,0] -- True
b3 = [3,2,1] > [3,100,0] -- False

-- head tail last init
h = head [1,2,3,4] -- 1
t = tail [1,2,3,4] -- [2,3,4]
l = last [1,2,3,4] -- 4
i = init [1,2,3,4] -- [1,2,3]

len = length [1,2,3,4] -- 4
nu1 = null [1,2,3,4] -- False
nu2 = null [] -- True
rev = reverse [1,2,3,4] -- [4,3,2,1]

tak1 = take 3 [1,2,3,4] -- [1,2,3]
tak2 = take 1 [1,2,3,4] -- [1]
tak3 = take 0 [1,2,3,4] -- []

dr1 = drop 3 [1,2,3,4] -- [4]
dr2 = drop 100 [1,2,3,4] -- []
dr3 = drop 0 [1,2,3,4] -- [1,2,3,4]

el1 = 4 `elem` [1,2,3,4] -- True
el2 = 100 `elem` [1,2,3,4] -- False

cy1 = take 10 (cycle [1,2,3,4]) -- [1,2,3,4,1,2,3,4,1,2]
cy2 = take 12 (cycle "LOL ") -- "LOL LOL LOL "

rep1 = take 5 (repeat 3) -- [3,3,3,3,3]
rep2 = take 5 (repeat [3]) -- [[3],[3],[3],[3],[3]]

repli = replicate 5 3 -- [3,3,3,3,3]

ls1 = [x*2 | x <- [1..4]] -- [2,4,6,8]
ls2 = [x*2 | x <- [1..4], x*2 >= 6] -- [6,8]
ls3 = [x | x <- [1..4] ++ [5], x <- [x*2], x `mod` 3 == 0] -- [6]
ls4 = [x | x <- [1,2,3], x <- [x*2, x*7]] -- [2,7,4,14,6,21]
ls5 = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- [55,80,100,110]

-- Original length
-- `_` operator drops its value
length' xs = sum [1 | _ <- xs]

-- Remove Upper case characters from string(character list)
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Tuples
zip1 = zip [1 .. 5] ["one", "two", "three", "four", "five"] -- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]
