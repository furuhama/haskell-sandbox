-- data.hs

-- Day
data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
    deriving (Show, Read)

-- Point and Triangle
data Point = Point (Double, Double) deriving (Show, Read)

data Triangle = Triangle Point Point Point deriving (Show, Read) -- the gravity center & two vertexes
