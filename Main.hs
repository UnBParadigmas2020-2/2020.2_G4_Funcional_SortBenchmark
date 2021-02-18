import GenerateList

main :: IO ()
main = do
  let lighterList = generateRandomList (getListSize 0)
  let lightList = generateRandomList (getListSize 1)
  let mediumList = generateRandomList (getListSize 2)
  let heavyList = generateRandomList (getListSize 3)
  let heavierList = generateRandomList (getListSize 4)
  let veryHeavierList = generateRandomList (getListSize 5)

  print "lighterList"
