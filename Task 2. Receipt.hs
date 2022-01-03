-- receipt
calculateVAT x = x * 1.2

main = do
  input1 <- getLine
  let quantities = read input1 :: [Float]

  input2 <- getLine
  let prices = read input2 :: [Float]

  let pricesWithVAT = map calculateVAT prices
  let pricesWithVAT1 = map (* 1.2) prices -- alternatively
  let values = zipWith (*) quantities prices
  let totalSum = sum values

  let valuesWithVAT = zipWith (*) quantities pricesWithVAT
  let totalSumWithVAT = sum valuesWithVAT

  print values
  print totalSum
  print (totalSum * 1.2) -- the total sum with the VAT coefficient

  print valuesWithVAT
  print totalSumWithVAT --the total sum with VAT obtained with summation, should be the same as the totalSum * 1.2 if everything is correct
