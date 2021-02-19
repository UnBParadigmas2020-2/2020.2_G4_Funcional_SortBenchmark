getFirstHalf  xs = take (div (length xs) 2) xs
getSecondHalf xs = drop (div (length xs) 2) xs

getHalf :: Ord a => [a] -> Int -> [a]
getHalf a valor 
                | valor == 1 = take (div (length a) 2) a
                | valor == 2 = drop (div (length a) 2) a