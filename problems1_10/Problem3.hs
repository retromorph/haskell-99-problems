myKth :: [a] -> Int -> a
myKth x 1 = head x
myKth (_:xs) k = myKth xs (k - 1)

main = print . myKth "haskell" $ 2 