 isPossibleToMade x y 
   | x <= y ="It is possible to make"
   | otherwise = "The materials are not enough"
 isPossibleToMade1 x y =
     if x<=y
     then "It is possible to make"
     else "The materials are not enough"

 main = do
   input <- getLine
   let materials = read input :: Float
   input1 <- getLine
   let diameters = read input1 :: [Float]
   input2 <- getLine
   let lenghts = read input2 :: [Float]
   input3 <- getLine
   let tankCounts = read input3 :: [Float]
   let aroundAreas = zipWith(\ d l -> pi * d * l) diameters lenghts
   print(aroundAreas) -- around areas
   let totalAreas = zipWith(\ a tC -> a * tC) aroundAreas tankCounts
   let totalArea = foldl (+) 0 totalAreas
   print(totalArea)
   print(isPossibleToMade totalArea materials)
   print(isPossibleToMade1 totalArea materials) -- alternatively
   
