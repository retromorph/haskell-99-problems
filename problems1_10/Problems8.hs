compress :: (Eq a) => [a] -> a -> [a]
compress [] _ = []
compress xs val
    | head xs == val = compress (tail xs) val
    | otherwise = [head xs] ++ (compress (tail xs) (head xs))

compressI :: (Eq a) => [a] -> [a]
compressI (x:xs) = [x] ++ compress xs x

main = print . compressI $ "aaaabccaadeeee"