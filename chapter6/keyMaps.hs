import Data.Char

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs)
  | key == k = Just v
  | otherwise = findKey key xs


string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit