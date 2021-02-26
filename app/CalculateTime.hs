module CalculateTime(benchmarkForAllArrays) where

import GenerateList
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
    lightList <- generateRandomList (getListSize 1)
    time ((algorithm lightList) `seq` return ()) maxTime
    mediumList <- generateRandomList (getListSize 2)
    time ((algorithm mediumList) `seq` return ()) maxTime
    heavyList <- generateRandomList (getListSize 3)
    time ((algorithm heavyList) `seq` return ()) maxTime
    heavierList <- generateRandomList (getListSize 4)
    time ((algorithm heavierList) `seq` return ()) maxTime
    veryHeavierList <- generateRandomList (getListSize 5)
    time ((algorithm veryHeavierList) `seq` return ()) maxTime