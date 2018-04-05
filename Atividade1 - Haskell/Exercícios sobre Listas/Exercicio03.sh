-- Exercício 03: Crie a lista de números de Fibonacci utilizando uma função geradora.

fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main :: IO()
main = do
  print(fibonacci !! 8)
