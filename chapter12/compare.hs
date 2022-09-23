import Data.Monoid

lengthCompare :: String -> String -> Ordering
lengthCompare x y = (length x `compare` length y) `mappend`
                    (x `compare` y)

-- import qualified Data.Foldable as F
-- data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

-- testTree = Node 5
--               (Node 3
--                   (Node 1 EmptyTree EmptyTree)
--                   (Node 6 EmptyTree EmptyTree)
--               )
--               (Node 9
--                   (Node 8 EmptyTree EmptyTree)
--                   (Node 10 EmptyTree EmptyTree)
--               )