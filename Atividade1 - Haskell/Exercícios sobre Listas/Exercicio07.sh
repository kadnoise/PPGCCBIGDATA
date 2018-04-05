-- Exercício 07: Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.

collatz :: Int -> Int
collatz x 
  | x `mod` 2==0 = x `div` 2
  | otherwise = 3*x + 1
  
collatzIt :: Int -> [Int]
collatzIt 1 = [1]
collatzIt n = n : (collatzIt next)
    where next = collatz n
    
collatzLen :: Int -> Int
collatzLen n = length (collatzIt n)

main :: IO()
main = do
  print(collatzLen 8)
