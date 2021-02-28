module SelectionSort(selectionSort) where
import Data.List ( delete )

-- 1. Achar o menor elemento;
-- 2. Colocá-lo no início da lista;
-- 3. Repassar recursivamente a mesma lista sem a primeira ocorrência do elemento já ordenado;

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort list = smaller : selectionSort (delete smaller list)
                        where smaller = minimum list