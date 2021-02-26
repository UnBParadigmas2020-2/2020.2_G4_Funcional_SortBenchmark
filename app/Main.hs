import GenerateList
import CalculateTime(benchmarkForAllArrays)
import InsertionSort (insertionSort)
import BubbleSort (bubbleSort)
import MergeSort(mergeSort)
import QuickSort(quickSort)
import ShellSort(shellSort)

main = do
    maxTime <- getLine
    print "-------------insertion---------------"
    benchmarkForAllArrays insertionSort (read maxTime :: Double)
    print "-------------bubble---------------"
    benchmarkForAllArrays bubbleSort (read maxTime :: Double)
    print "-------------merge---------------"
    benchmarkForAllArrays mergeSort (read maxTime :: Double)
    print "-------------quick---------------"
    benchmarkForAllArrays quickSort (read maxTime :: Double)
    print "-------------shell---------------"
    benchmarkForAllArrays shellSort (read maxTime :: Double)
