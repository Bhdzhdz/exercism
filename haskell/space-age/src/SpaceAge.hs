module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving Eq


yearInSeconds :: Planet -> Float  
yearInSeconds Mercury = 0.2408467 * 31557600
yearInSeconds Venus = 0.61519726 * 31557600
yearInSeconds Earth = 31557600
yearInSeconds Mars = 1.8808158 * 31557600
yearInSeconds Jupiter = 11.862615 * 31557600
yearInSeconds Saturn = 29.447498 * 31557600
yearInSeconds Uranus = 84.016846 * 31557600
yearInSeconds Neptune = 164.79132 * 31557600

    

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / yearInSeconds planet