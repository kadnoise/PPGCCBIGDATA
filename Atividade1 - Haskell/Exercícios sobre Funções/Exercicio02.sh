-- Exercício 02: Crie uma função tipoTriangulo que determina o tipo do triângulo formado pelos três lados x, y, z.

ehTriangulo x y z
  | (abs(y - z) < x) && (x < (y + z)) = True
  | (abs(x - z) < y) && (y < (x + z)) = True
  | (abs(x - y) < z) && (z < (x + y)) = True
  | otherwise= False
  
tipoTriangulo :: Int->Int->Int->String
tipoTriangulo x y z
  | not (ehTriangulo x y z)    = "Nao e triangulo"
  | (x==y) || (y==z) || (z==x) = "Triangulo isosceles"
  | (x==y) && (y==z) && (z==x) = "Triangulo equilatero"
  | otherwise = "Triangulo escaleno" 

main :: IO()
main = do
  print(tipoTriangulo 20 30 40)
