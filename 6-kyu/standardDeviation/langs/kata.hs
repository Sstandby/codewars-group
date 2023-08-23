-- Deviation standar of population (sample: n-1)

import Prelude

my :: [Double] -> Double
my n = (sum n) / fromIntegral (length n)

standar :: [Double] -> Double
standar n = desviation
  where
    desviation = sqrt ((sum dist) / fromIntegral (length n))
    dist = [(^) (x - mysum) 2 | x <- n]
    mysum = my n

minDeviation :: [Double] -> Double
minDeviation n = (my n) - 2.5 * (standar n)

maxDeviation :: [Double] -> Double
maxDeviation n = (my n) + 2.5 * (standar n)

recursiveFilter :: [Double] -> Int -> [Double]
recursiveFilter n y
  | y >= 1 = recursiveFilter list (y - 1)
  | y == 0 = list
  where
    list = [x | x <- n, x >= (minDeviation n), x <= (maxDeviation n)]

filterVal :: [Int] -> ((Int, Int), Double, Double)
filterVal n = ((lengOriginal, lengFilter), my list, standardDeviation)
  where
    list = recursiveFilter doubleList lengOriginal
    lengOriginal = length doubleList
    lengFilter = length list
    doubleList = map fromIntegral n
    standardDeviation = (standar list) / (fromIntegral lengFilter ** 0.5)
