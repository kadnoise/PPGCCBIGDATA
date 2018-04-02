-- Exercício 12: Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer.

lista :: String -> [Integer]
lista a = map (\x -> read [x] :: Integer) a

main :: IO()
main = do
  print(lista "0123456789")
