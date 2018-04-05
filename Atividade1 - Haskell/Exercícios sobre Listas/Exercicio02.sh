-- Exercício 02: Crie uma função projectEuler5 que retorna o primeiro número natural que retorna True para a função do exercício anterior. Pense em como reduzir o custo computacional.

divisivel20 :: Integer -> Bool
divisivel20 x = foldl (&&) True [ (mod x i) == 0 | i <- [1..20]]

projectEuler5 :: Int
projectEuler5 = head [x | x <- [1..], divisivel20 x]

main :: IO()
main = do
  print(projectEuler5)
