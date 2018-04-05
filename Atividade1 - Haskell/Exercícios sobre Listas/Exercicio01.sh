-- Exercício 01: Crie uma função divisivel20 x que retorna verdadeiro se x for divisível por todos os números de 1 a 20.

divisivel20 :: Integer -> Bool
divisivel20 x = foldl (&&) True [ (mod x i) == 0 | i <- [1..20]]


main :: IO()
main = do
  print(divisivel20 232792560)
