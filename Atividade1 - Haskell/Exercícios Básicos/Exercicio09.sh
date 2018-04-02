-- Exercício 09: Encontre os 10 primeiros anos bissextos.

lista :: [Int]
lista = [anobi | anobi <- [1..2018], bissexto anobi]

bissexto :: Int -> Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

main :: IO()
main = do
  print(take 10 lista)
