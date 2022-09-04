import Control.Monad

main = do
  colors <- forM [1,2,3,4] $ \a -> do
    putStrLn $ "which color do you associate with the number "
               ++ show a ++ "?"
    getLine
  putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
  mapM putStrLn colors