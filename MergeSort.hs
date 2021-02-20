getHalf :: Ord a => [a] -> Int -> [a]
getHalf a valor 
                | valor == 1 = take (div (length a) 2) a
                | valor == 2 = drop (div (length a) 2) a

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
                | x <= y    = x : merge xs (y:ys)
                | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort []  = []
mergeSort [a] = [a]
mergeSort xs  = merge (mergeSort (getHalf xs 1)) (mergeSort (getHalf xs 2))