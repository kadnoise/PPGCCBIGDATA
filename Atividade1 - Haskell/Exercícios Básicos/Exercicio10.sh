-- Exercício 10: Crie uma tupla em que o primeiro elemento tem metade dos anos bissextos e o segundo elemento a outra metade.

lista:: [Int]
lista = [anobi | anobi <- [1..2018], bissexto anobi]

bissexto:: Int -> Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

tailn :: Int -> [Int]
tailn n = drop ((length lista)-n) lista

n = length(lista) `div` 2

tuple = (take n lista, tailn (length(lista) - n))

main :: IO()
main = do
  print(tuple)
