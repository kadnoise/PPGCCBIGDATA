-- Exercício 03: Implemente uma função que faz a multiplicação etíope entre dois números.

par :: Integer -> Bool
par n = n `mod` 2 == 0

etiope :: Integer -> Integer -> Integer
etiope m n
  | m == 1 = n
  | par m = etiope (m `div` 2) (n * 2)
  | otherwise  = n + etiope (m `div` 2) (n * 2)

main :: IO()
main = do
  print(etiope 5 11)
