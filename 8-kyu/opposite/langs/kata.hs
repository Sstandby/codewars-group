import Data.Char

convertCase :: String -> String
convertCase = map (\c -> if isUpper c then toLower c else toUpper c)

isOpposite :: String -> String -> Bool
isOpposite [] [] = False
isOpposite b c
  | (==) (convertCase b) c = True
  | (==) b (convertCase c)  = True
  | (==) b  c  = True
  | otherwise = False
