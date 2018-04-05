-- Exercício 06: Faça uma função que calcule a persistência aditiva de um número.

perscia x = ((x - 1) `mod` 9) + 1

main :: IO()
main = do
  print(perscia 12345)
