-- Exercício 08: Encontre o número x entre 1 e 1.000.000 que tem a maior sequência de Collatz. (Project Euler 14)

import Data.List
import Data.Ord
import qualified Data.Array as Array

nextCollatz :: Integer -> Integer
nextCollatz x
  | even x    = x `div` 2
  | otherwise = 3*x + 1
     
memoLenCollatz = lengths
  where
    lengths = Array.listArray (1, 1000000) [memoLen x | x <- [1..1000000]]
    memoLen 1 = 1 
    memoLen 2 = 2
    memoLen 3 = 2
    memoLen n 
      | next <= 1000000 = 1 + lengths Array.! next
      | otherwise       = 1 + memoLen next
      where next = nextCollatz n
    
numeros = [1..1000000]    

lengths = take 1000000
        $ Array.assocs memoLenCollatz   -- retorna lista de tuplas (indice, valor)

maior = fst $ maximumBy (comparing snd) lengths  -- retorna o maior elemento da lista comparado pelo segundo elemento da array

main :: IO()
main = do
  print(maior)
