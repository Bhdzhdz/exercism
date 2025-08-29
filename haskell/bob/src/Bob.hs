module Bob (responseFor) where
import Data.Char (isSpace)

isYelling :: String -> Bool
isYelling xs =
    any (`elem` ['A' .. 'Z']) xs
    && not (any (`elem` ['a' .. 'z']) xs)

isAsking :: String -> Bool
isAsking  ['?'] = True
isAsking (_:xs) = isAsking xs
isAsking _ = False


spaceLess :: String -> String
spaceLess = filter (not.isSpace)

responseFor :: String -> String
responseFor xs
    | null text = "Fine. Be that way!"
    | isYelling text && isAsking text =  "Calm down, I know what I'm doing!"
    | isYelling text = "Whoa, chill out!"
    | isAsking text = "Sure."
    | otherwise = "Whatever."
    where text = spaceLess xs
