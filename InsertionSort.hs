module InsertionSort(insertionSort) where

-- Insercao de um elemento na sua posicao adequada de uma lista
-- Recebemos o elemento, a lista, e retornamos a lista com o elemento inserido
insert :: Ord a => a -> [a] -> [a]
-- Se a lista está vazia, retornamos a lista com o elemento
insert x [] = [x]
-- Se o elemento for menor que o primeiro da lista, entao ele eh o novo primeiro
-- Senao, chamamos recursivamente para compara-lo com o restante dos elementos
insert x (y:ys) | x < y     = x:y:ys
                | otherwise = y:(insert x ys)

-- Ao receber uma lista, executamos o passo de insercao para o seu
-- primeiro elemento, e chamamos a funcao para que o mesmo seja feito
-- recursivamente com o restante
insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)