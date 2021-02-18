module GenerateList where

import System.Random (randomRIO)

getListSizes :: [Int]
getListSizes = map round [ 2 ** 10, 2 ** 12, 2 ** 14, 2 ** 16, 2 ** 18, 2 ** 20]

