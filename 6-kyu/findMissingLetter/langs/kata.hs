import Data.List

findMissingLetter :: [Char] -> Char
findMissingLetter xs = head((\\) [(head xs)..(last xs)] xs)
