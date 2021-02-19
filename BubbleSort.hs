bubbleUp :: Ord a => [a] -> [a]
bubbleUp [] = []
bubbleUp [a] = [a]
bubbleUp (x:y:xs) = min x y : bubbleUp (max x y : xs)