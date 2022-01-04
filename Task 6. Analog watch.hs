main = do
  let a = [0.707, 0.707] --sqrt(2)/2 45 degree
  let b = [-2, 4 * sqrt 3 / 2] -- 120 degree
  let abScalar = sum (zipWith (*) a b)

  let aLen = sqrt (sum (zipWith (*) a a))

  let bLen = sqrt (sum (zipWith (*) b b))

  let cosAngle = abScalar / (aLen * bLen)

  let angle = round (acos cosAngle / pi * 180)
  print angle
