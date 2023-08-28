narcissistic :: Integral n => n -> Bool
narcissistic n = (==) (sum [(^) a (length nList)| a <- nList]) (n)
  where digs 0 = []
        digs x = digs (x `div` 10) ++ [x `mod` 10]
        nList = digs n

