module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x
  | x <= 0    = Nothing
  | x == 1    = Just 0
  | even x    = fmap (1 +) (collatz (div x 2))
  | otherwise = fmap (1 +) (collatz (3 * x + 1))
