import Control.Arrow (Arrow(second, first))
import Control.Monad
type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
    | abs ((left + n) - right) < 4 = Just (left + n, right)
    | otherwise                    = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
    | abs (left - (right + n)) < 4 = Just (left, right + n)
    | otherwise                    = Nothing

routine :: Maybe Pole
routine = do
  start <- return (0,0)
  first <- landLeft 2 start
  second <- landRight 2 first 
  landLeft 1 second

type KnightPos = (Int, Int)
moveKnight :: KnightPos -> [KnightPos]
moveKnight (c, r) = do
  (c', r') <- [(c+2, r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
              ,(c+1,r+2),(c+1,r-2),(c-1,r-2),(c-1,r+2)
              ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c', r')