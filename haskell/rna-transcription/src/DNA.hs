module DNA (toRNA) where

getComplement :: Char -> Either Char Char
getComplement 'G' = Right 'C'
getComplement 'C' = Right 'G'
getComplement 'T' = Right 'A'
getComplement 'A' = Right 'U'
getComplement c   = Left c

toRNA :: String -> Either Char String
toRNA = traverse getComplement