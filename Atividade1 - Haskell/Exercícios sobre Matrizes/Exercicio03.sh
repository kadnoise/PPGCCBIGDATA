-- Exercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.

somaDiagSec :: [[Int]] -> Int
somaDiagSec matriz
  | nlinhas == ncols = sum [ matriz!!i!!(ncols-1-i)  | i <- [0..nlinhas-1] ]
  | otherwise = error "Apenas para matrizes quadradas"
  where
    nlinhas = length matriz
    ncols = length (matriz!!0)

main :: IO()
main = do
  print (somaDiagSec [[0,0,1], [0,1,0], [1,0,0]])
