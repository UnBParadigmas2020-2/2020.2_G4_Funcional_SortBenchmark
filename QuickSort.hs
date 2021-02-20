module QuickSort(quickSort) where

quickSort :: (Ord a) => [a] -> [a]  
quickSort [] = []  
quickSort (x:xs) = 
    let smallerElements = quickSort [a | a <- xs, a <= x]  
        largerElements = quickSort [a | a <- xs, a > x]  
    in  smallerElements ++ [x] ++ largerElements