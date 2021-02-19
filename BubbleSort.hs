bubbleUp :: Ord a => [a] -> [a]
bubbleUp [] = []
bubbleUp [a] = [a]
bubbleUp (x:y:xs) = min x y : bubbleUp (max x y : xs)

bubbleCounter :: Ord a => [a] -> Int -> [a]
bubbleCounter xs i 
            | i == length xs = xs
            | otherwise = bubbleCounter (bubbleUp xs) (i + 1)
