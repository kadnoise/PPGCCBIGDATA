-- Exercício 04: Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)

fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

projectEuler2 = sum [x | x <- takeWhile (<= 4000000) fibonacci, even x]


main :: IO()
main = do
  print(projectEuler2)
