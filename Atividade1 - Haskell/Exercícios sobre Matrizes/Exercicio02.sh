-- Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.

somaDiagPrinc :: [[Int]] -> Int
somaDiagPrinc  matriz
    | nlinhas  == ncols  =  sum  [ matriz!!i!!i  | i <- [0..nlinhas-1]  ]
    | otherwise =  error "matriz nao e quadrada"
    where
        nlinhas = length matriz
        ncols = length (matriz!!0)

main :: IO()
main = do
  print (somaDiagPrinc [[1,0,0], [0,1,0], [0,0,1]])
