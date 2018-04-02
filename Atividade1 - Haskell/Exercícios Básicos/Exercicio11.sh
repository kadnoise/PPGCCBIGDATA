-- Exercício 11: Crie um concatenador de strings que concatena duas strings separadas por espaço.

concatenador:: String -> String -> String
concatenador string1 string2 = string1 ++ " " ++ string2


main :: IO()
main = do
  print(concatenador "Hello" "World!")
