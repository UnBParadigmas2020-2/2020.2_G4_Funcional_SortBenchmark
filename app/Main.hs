import GenerateList
import CalculateTime(benchmarkForAllArrays)
import InsertionSort (insertionSort)
import BubbleSort (bubbleSort)
import MergeSort(mergeSort)
import QuickSort(quickSort)
import ShellSort(shellSort)

main = do
    putStrLn "\n\nDigite, em segundos, o tempo limite para execucao do algoritmo! \nInclui numeros decimais separados por (.)"
    maxTime <- getLine
    lighterList <- generateRandomList (getListSize 0)
    lightList <- generateRandomList (getListSize 1)
    mediumList <- generateRandomList (getListSize 2)
    heavyList <- generateRandomList (getListSize 3)
    heavierList <- generateRandomList (getListSize 4)
    veryHeavierList <- generateRandomList (getListSize 5)
    putStrLn "-------------insertion---------------"
    benchmarkForAllArrays insertionSort lighterList (read maxTime :: Double)
    benchmarkForAllArrays insertionSort lightList (read maxTime :: Double)
    benchmarkForAllArrays insertionSort mediumList (read maxTime :: Double)
    benchmarkForAllArrays insertionSort heavyList (read maxTime :: Double)
    benchmarkForAllArrays insertionSort heavierList (read maxTime :: Double)
    benchmarkForAllArrays insertionSort veryHeavierList (read maxTime :: Double)
    putStrLn "\n\n-------------bubble---------------"
    benchmarkForAllArrays bubbleSort lighterList (read maxTime :: Double)
    benchmarkForAllArrays bubbleSort lightList (read maxTime :: Double)
    benchmarkForAllArrays bubbleSort mediumList (read maxTime :: Double)
    benchmarkForAllArrays bubbleSort heavyList (read maxTime :: Double)
    benchmarkForAllArrays bubbleSort heavierList (read maxTime :: Double)
    benchmarkForAllArrays bubbleSort veryHeavierList (read maxTime :: Double)
    putStrLn "\n\n-------------merge---------------"
    benchmarkForAllArrays mergeSort lighterList (read maxTime :: Double)
    benchmarkForAllArrays mergeSort lightList (read maxTime :: Double)
    benchmarkForAllArrays mergeSort mediumList (read maxTime :: Double)
    benchmarkForAllArrays mergeSort heavyList (read maxTime :: Double)
    benchmarkForAllArrays mergeSort heavierList (read maxTime :: Double)
    benchmarkForAllArrays mergeSort veryHeavierList (read maxTime :: Double)
    putStrLn "\n\n-------------quick---------------"
    benchmarkForAllArrays quickSort lighterList (read maxTime :: Double)
    benchmarkForAllArrays quickSort lightList (read maxTime :: Double)
    benchmarkForAllArrays quickSort mediumList (read maxTime :: Double)
    benchmarkForAllArrays quickSort heavyList (read maxTime :: Double)
    benchmarkForAllArrays quickSort heavierList (read maxTime :: Double)
    benchmarkForAllArrays quickSort veryHeavierList (read maxTime :: Double)
    putStrLn "\n\n-------------shell---------------"
    benchmarkForAllArrays shellSort lighterList (read maxTime :: Double)
    benchmarkForAllArrays shellSort lightList (read maxTime :: Double)
    benchmarkForAllArrays shellSort mediumList (read maxTime :: Double)
    benchmarkForAllArrays shellSort heavyList (read maxTime :: Double)
    benchmarkForAllArrays shellSort heavierList (read maxTime :: Double)
    benchmarkForAllArrays shellSort veryHeavierList (read maxTime :: Double)
