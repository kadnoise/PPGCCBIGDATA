--Exercício 03: Faça uma função mult5 x que retorne True caso a entrada seja múltiplo de 5 e False caso contrário.
mult5 :: Integer -> Bool
mult5 x = (x `mod` 5) == 0

main :: IO()
main = do
  print(mult5 5)
  print(mult5 9)
