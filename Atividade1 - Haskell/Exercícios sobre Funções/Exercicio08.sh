-- Exercício 08: Faça uma função que calcule o elemento (i,j) do triângulo de pascal.

tri_pascal :: [[Int]]
tri_pascal = iterate func [1]
  where func x = zipWith (+) (0 : x) (x++[0])

main :: IO()
main = do
  print(take 4 tri_pascal) 
