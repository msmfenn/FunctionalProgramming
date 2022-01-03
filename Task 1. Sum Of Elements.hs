sumElements totalSum list =
  if null list
    then totalSum
    else sumElements (totalSum + head list) (tail list)

sumElements1 totalSum [] = totalSum
sumElements1 totalSum (x : xs) = sumElements1 (x + totalSum) xs

sumElements2 = foldl (+) 0

main = do
  input <- getLine
  let list = read input :: [Integer]

  let result = sumElements 0 list
  print result

  let result1 = sumElements1 0 list
  print result1

  let result2 = sumElements2 list
  print result2
