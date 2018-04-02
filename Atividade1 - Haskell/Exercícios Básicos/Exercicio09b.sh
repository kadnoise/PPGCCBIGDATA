-- Exercício 09: Encontre os 10 últimos anos bissextos (dica: use a função length para determinar o tamanho da lista).

lista :: [Int]
lista = [anobi|anobi<-[1..2018], bissexto anobi]

bissexto :: Int -> Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

tailn :: Int -> [Int]
tailn n = drop ((length lista)-n) lista

main :: IO()
main = do
  print(tailn 10)
