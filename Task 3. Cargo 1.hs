  isPossibleToCarry x y 
    | x <= y ="It is possible to carry"
    | otherwise = "The load is too large"

  isPossibleToCarry1 x y =
     if x<=y
     then "It is possible to carry"
     else "The load is too large"

  main = do
   input <- getLine
   let tankerVolume = read input :: Float

   input1 <- getLine
   let diameters = read input1 :: [Float]

   input2 <- getLine
   let lenghts = read input2 :: [Float]

   input3 <- getLine
   let tankCounts = read input3 :: [Float]

   let volumes = zipWith(\ d l -> pi / 4 * d * d * l) diameters lenghts

   print(volumes) -- volumes
   let totalVolumes = zipWith(\ a tC -> a * tC) volumes tankCounts
   let totalVolume = foldl (+) 0 totalVolumes
   print(totalVolume)
   print(isPossibleToCarry totalVolume tankerVolume)
   print(isPossibleToCarry1 totalVolume tankerVolume) -- alternatively
