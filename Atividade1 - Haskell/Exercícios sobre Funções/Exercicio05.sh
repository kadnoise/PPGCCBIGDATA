-- Exercício 05: Faça uma função que calcule a soma dos dígitos de um número.

soma_dgt :: Integer -> Integer
soma_dgt 0 = 0
soma_dgt n = ( n `mod` 10 ) + (soma_dgt ( n `div` 10 ))

main :: IO()
main = do
  print(soma_dgt 12345)
