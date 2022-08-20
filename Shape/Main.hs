import Shapes

data Person = Person {
  firstName :: String
, lastName :: String
, age :: Int
} deriving (Eq, Show, Read)

mikeD = Person { firstName = "Michael", lastName = "Diamond", age = 32 }
adRock = Person { firstName = "Adam", lastName = "Horovits", age = 41 }
mca = Person { firstName = "Adam", lastName = "Yauch", age = 44 }


main = do
  print $ nudge (baseCircle 30) 10 20


data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m)  (j*m)  (k*m)

