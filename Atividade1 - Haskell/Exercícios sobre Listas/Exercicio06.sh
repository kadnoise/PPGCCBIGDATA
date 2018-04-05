-- Exercício 06: Crie a função collatz x que retorna x/2, se x for par e (3x+1) se for ímpar.

collatz :: Int -> Int
collatz x 
  | x `mod` 2==0 = x `div` 2
  | otherwise = 3*x + 1

main :: IO()
main = do
  print(collatz 10)
