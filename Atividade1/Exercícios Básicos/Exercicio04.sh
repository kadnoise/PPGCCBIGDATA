-- Exercício 04: Faça uma função mult35 x que retorne True caso a entrada seja múltiplo de 3 e 5 e False caso contrário.

mult3 :: Integer -> Bool
mult3 x = (x `mod` 3) == 0

mult5 :: Integer -> Bool
mult5 x = (x `mod` 5) == 0

mult35 :: Integer -> Bool
mult35 x = mult3 x && mult5 x

main :: IO()
main = do
  print(mult35 15)
  print(mult35 9)
