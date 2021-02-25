import GenerateList
import InsertionSort (insertionSort)

import Text.Printf
import Control.Exception
import System.CPUTime

printBenchmark timeSpent maxTime
  |timeSpent <= maxTime = printf "Tempo levado: %0.3f sec\n" (timeSpent)
  |otherwise = printf "time limit exceeded\n"

time :: IO t  -> Double -> IO t
time a maxTime = do
    start <- getCPUTime
    v <- a
    end   <- getCPUTime
    let diff = (fromIntegral (end - start)) / (10^12)
    printBenchmark (diff :: Double) (maxTime)
    return v

benchmarkForAllArrays algorithm maxTime = do 
    lighterList <- generateRandomList (getListSize 0)
    time ((algorithm lighterList) `seq` return ()) maxTime
    heavyList <- generateRandomList (getListSize 3)
    time ((algorithm heavyList) `seq` return ()) maxTime

main = do
    maxTime <- getLine
    benchmarkForAllArrays insertionSort (read maxTime :: Double)
