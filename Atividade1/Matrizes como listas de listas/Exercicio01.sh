identidade :: Int -> [[Double]]
identidade n = [[if x == y then 1 else 0 | x <- [1..n]] | y <- [1..n]]

splitLines :: [[Double]] -> String
splitLines line = unlines ["Matriz: ", unlines (fmap show line)]


main :: IO()
main = do
  putStrLn(splitLines(identidade 5))
