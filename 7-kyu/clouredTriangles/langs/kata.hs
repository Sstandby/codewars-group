import Data.List

colours :: String -> Char
colours m
  | m == "BG" || m == "GB" = 'R'
  | m == "BR" || m == "RB" = 'G'
  | m == "RG" || m == "GR" = 'B'
  | otherwise = head m


triangle :: String -> String
triangle n = [colours [x, y] | (x, y) <- zip n (drop 1 n)]

recursiveTriangle :: String -> Char
recursiveTriangle n
  | length n == 1 = head n
  | otherwise = recursiveTriangle (triangle n)

