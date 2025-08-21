module Darts (score) where

sqrtDistanceToCenter :: Float -> Float -> Float

sqrtDistanceToCenter x y =  x*x + y*y

score :: Float -> Float -> Int
score x y 
    | sqrtDistanceToCenter x y <= 1 = 10
    | sqrtDistanceToCenter x y <= 25 = 5
    | sqrtDistanceToCenter x y <= 100 = 1
    | otherwise = 0
