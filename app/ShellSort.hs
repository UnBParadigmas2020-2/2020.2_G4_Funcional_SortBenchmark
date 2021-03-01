module ShellSort(shellSort) where

import Data.List (transpose, unfoldr)

-- Importando o nosso insertionSort
import InsertionSort (insertionSort)

-- Helper para quebrar uma lista em varias listas
divide :: Int -> [a] -> [[a]]
divide k = transpose . takeWhile (not . null) . unfoldr (Just . splitAt k)

-- Helper para juntar as listas separadas novamente
join :: [[a]] -> [a]
join = concat . transpose

-- A cada passo dividimos a lista, ordenamos cada parte com insertion sort, e entao juntamos novamentee
divideAndSort :: (Ord a) => Int -> [a] -> [a]
divideAndSort k = join . map insertionSort . divide k

-- Executando os passos, o calculo do valor utilizado para definir as divisoes feitas em cada passo
-- produz valores arbitrarios, como recomendado em R. Sedgewick, J. Algorithms 7 (1986), 159-173
shellSort :: (Ord a) => [a] -> [a]
shellSort xs = foldr divideAndSort xs gaps
    where gaps = takeWhile (< length xs) sedgewick
          sedgewick = concat [[9 * 2^n - 9 * 2^(n `div` 2) + 1,
                               8 * 2^(n+1) - 6 * 2^(n `div` 2) + 1] | n <- [0..]]