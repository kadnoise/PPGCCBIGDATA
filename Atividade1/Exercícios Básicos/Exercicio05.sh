-- Exercício 05: Faça um programa que retorne True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.

mult2 :: Integer -> Bool
mult2 x = (x `mod` 2) == 0

func :: Integer -> Bool
func x 
  | x < -1 = True
  | x > 1 && mult2 x = True
  | otherwise = False

main :: IO()
main = do
  print(func 2)
  print(func 3)
