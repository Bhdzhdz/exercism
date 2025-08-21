module LeapYear (isLeapYear) where

isDivisibleByFour :: Integral a => a -> Bool
isDivisibleByFour x = mod x 4 == 0

isDivisibleBy100 :: Integral a => a -> Bool
isDivisibleBy100 x = mod x 100 == 0

isDivisibleBy400 :: Integral a => a -> Bool
isDivisibleBy400 x = mod x 400 == 0

isLeapYear :: Integer -> Bool
isLeapYear year
  | isDivisibleByFour year && not (isDivisibleBy100 year) = True
  | isDivisibleBy400 year = True
  | otherwise = False
