-- Exercício 04: Faça uma função que determine se um número é primo.

primo :: Integer -> Integer -> Bool
primo x y
 | y == 1 = True
 | (x `mod` y) == 0 = False 
 | otherwise = primo x (y - 1)
 
ehPrimo :: Integer -> Bool
ehPrimo x = primo x (x - 1)

main :: IO()
main = do
  print(ehPrimo 7)
