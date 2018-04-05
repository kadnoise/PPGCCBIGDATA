-- Exercício 07: Faça uma função que calcule o coeficiente binomial de (m,n).

fatorial :: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n-1) (n*r)
    
cfBinomial :: Int -> Int -> Int
cfBinomial n k
  | n < k = 0
  | otherwise = (fatorial n) `div` ((fatorial k) * fatorial (n - k))

main :: IO()
main = do
  print(cfBinomial 5 3)
