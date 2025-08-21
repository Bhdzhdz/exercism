module Darts (score) where

distanceToCenter :: Float -> Float -> Float

distanceToCenter x y =  sqrt(x*x + y*y)

score :: Float -> Float -> Int
score x y 
    | distanceToCenter x y <= 1 = 10
    | distanceToCenter x y <= 5 = 5
    | distanceToCenter x y <= 10 = 1
    | otherwise = 0
