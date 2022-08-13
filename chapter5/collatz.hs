chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n  = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

addThree' :: Int -> Int -> Int -> Int
addThree' = \x -> \y -> \z -> x + y + z

flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

-- numLongChains = length (filter isLong (map length(map chain [1..100])))
--   where isLong xs = xs > 15


-- -- getNext :: (Integral a, Fractional a) => a -> a
-- getNext x
--   | x == 1       = x
--   | (mod x 2 == 0) = x / 2
--   | otherwise    = x * 3 + 1

-- -- increment :: (Num a) => a -> a
-- -- increment x 
-- --   | x == 0 = x + 1
-- --   | otherwise = x + 1
--   -- | mod x 2 == 1 = x

-- -- apply :: ()
-- -- apply n f x
-- --   | n == 1 = f x
-- --   | otherwise = f (apply n-1 f x )

-- -- applyAdd :: (a -> a) -> [a] -> [a]
-- applyAdd f a = a ++ [(f (last a))]


-- -- generateCollatz n = apply 15 applyAdd getNext n
  