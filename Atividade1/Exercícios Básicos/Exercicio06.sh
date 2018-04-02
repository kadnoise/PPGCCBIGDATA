-- Exercício 06: Faça uma função que recebe um tipo Integer e retorna ele dividido por 2:

div2 :: Integer -> Float
div2 x = fromIntegral(x) / 2

main :: IO()
main = do
  print(div2 8)
