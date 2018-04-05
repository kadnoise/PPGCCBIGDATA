-- Exercício 05: Faça uma função para calcular o produto escalar entre dois vetores.

produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar a b = foldl (+) 0 (zipWith (*) a b)

main :: IO()
main = do
  print(produtoEscalar [1,2,3] [4,5,6])
