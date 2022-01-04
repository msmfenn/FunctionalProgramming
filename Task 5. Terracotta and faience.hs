squaringList list =
  if null list
    then []
    else head list * head list : squaringList (tail list)

squaringList1 [] = []
squaringList1 (x : xs) = (x * x) : squaringList1 xs

squaring x = x * x

squaringList2 = map squaring

squaringList3 = map (\x -> x * x)

main = do
  input1 <- getLine
  let areaToCover = read input1 :: Double
  input2 <- getLine
  let lenghts = read input2 :: [Double]
  input3 <- getLine
  let countsPerPacket = read input3 :: [Double]

  let pieceArea = squaringList lenghts
  let areasPerPacket = zipWith (*) pieceArea countsPerPacket
  let rec = map recip areasPerPacket
  let packets = map (areaToCover *) rec
  let roundedPackets = map ceiling packets
  print roundedPackets
