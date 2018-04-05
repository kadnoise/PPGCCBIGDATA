-- Exercício 01: Crie uma função ehTriangulo que determina se três lados x, y, z podem formar um triângulo.

ehTriangulo :: Int -> Int -> Int -> Bool
ehTriangulo x y z
  | (abs(y - z) < x) && (x < (y + z)) = True
  | (abs(x - z) < y) && (y < (x + z)) = True
  | (abs(x - y) < z) && (z < (x + y)) = True
  | otherwise = False

main :: IO()
main = do
  print(ehTriangulo 20 30 40)
