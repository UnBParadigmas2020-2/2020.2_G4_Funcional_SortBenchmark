module CalculateTime(benchmarkForAllArrays) where

import GenerateList
import Text.Printf
import Control.Exception
import System.CPUTime


printBenchmark timeSpent maxTime
  |timeSpent <= maxTime = printf "Tempo levado: %0.8f sec\n" (timeSpent)
  |otherwise = printf "Tempo maximo excedido! Tempo levado: %0.3f sec\n" (timeSpent)

time :: IO t  -> Double -> IO t
time a maxTime = do
    start <- getCPUTime
    v <- a
    end   <- getCPUTime
    let diff = (fromIntegral (end - start)) / (10^12)
    printBenchmark (diff :: Double) (maxTime)
    return v

benchmarkForAllArrays algorithm randomList maxTime = do 
    time ((algorithm randomList) `seq` return ()) maxTime