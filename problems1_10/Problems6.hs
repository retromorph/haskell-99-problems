isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome x = (head x) == (last x) && (isPalindrome . init . tail $ x)

main = print . isPalindrome $ "madamimadam"