amIAfraid :: String -> Int -> Bool
amIAfraid day num
  | (&&) (day == "Monday") (num == 12) = True
  | (&&) (day == "Tuesday") (num >= 95) = True
  | (&&) (day == "Wednesday") (num == 34) = True
  | (&&) (day == "Thursday") (num == 0) = True
  | (&&) (day == "Friday") (even num) = True
  | (&&) (day == "Saturday") (num == 56) = True
  | (&&) (day == "Sunday") (num `elem` [666, -666]) = True
  | otherwise = False
