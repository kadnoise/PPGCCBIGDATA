-- Exercício 01: Execute as seguintes operações utilizando o menor número de parênteses:
-- 2⋅3+5
-- 2+2⋅3+1
-- 34+5⋅25+1

op1 = 2 * 3 + 5
op2 = 2 + 2 * 3 + 1
op3 = 3^4+5 * 2^5 +1

main :: IO()
main = do
  print(op1)
  print(op2)
  print(op3)
