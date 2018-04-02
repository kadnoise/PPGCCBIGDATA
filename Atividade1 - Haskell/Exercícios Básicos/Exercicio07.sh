-- Exercício 07: Faca uma função que receba um ângulo a e retorne uma tupla contendo o seno da metade desse ângulo utilizando a identidade:

tuple :: Double -> (Double,Double)
tuple x = (sqrt ((1 - cos x) / 2),-sqrt ((1 - cos x) / 2))

main :: IO()
main = do
  print(tuple 15)
