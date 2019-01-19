-- baby.hs

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
e = "Steve Buscemi" !! 6 -- 'B'
e2 = [1,2,3,4] !! 1 -- 2
