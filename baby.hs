-- baby.hs

doubleMe x = x + x

doubleUs x y = x*2 + y*2

-- doubleUs with doubleMe function
doubleUs2 x y = doubleMe x + doubleMe y
