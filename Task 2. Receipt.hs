 -- receipt
 calculateVAT x = x*1.2

 main = do
   input1 <- getLine
   let quantities = read input1 :: [Float]
  
   input2 <- getLine
   let prices = read input2 :: [Float]
   
   let pricesWithVAT  = map calculateVAT prices
   let pricesWithVAT1  = map (\x->x*1.2) prices -- alternatively
 
   let values = zipWith (*) quantities prices
   let totalSum = foldl (+) 0 values

   let valuesWithVAT = zipWith (*) quantities pricesWithVAT
   let totalSumWithVAT = foldl (+) 0 valuesWithVAT
 
   print(values)
   print(totalSum)
   print(totalSum*1.2)

   print(valuesWithVAT)
   print(totalSumWithVAT)
 
