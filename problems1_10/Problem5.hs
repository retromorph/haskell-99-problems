myReverse :: [a] -> [a]
myReverse (x:xs) = (xs:x)

main = print . myReverse $ [1,2,3,4]