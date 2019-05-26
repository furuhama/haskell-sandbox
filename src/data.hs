-- data.hs

-- Day
data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
    deriving (Show, Read)

-- Point and Triangle
data Point = Point (Double, Double) deriving (Show, Read)

data Triangle = Triangle Point Point Point deriving (Show, Read) -- the gravity center & two vertexes

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)
