max' :: (Ord a) => [a] -> a
max' [] = error "Max of empty list"
max' [x] = x
max' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = max' xs

multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  

-- Example method using pattern matching
timesSixtySeven :: (Num a, Ord a) => a -> a
timesSixtySeven 0 = 88 -- Pass in a 0 get 88
timesSixtySeven x -- Pass in any value greater than 11 , get back your original value
    | x > 11 = x
    | otherwise = x * 67 -- Pass in a value less than 11, multiply that number by 67

-- Pass a function
applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x)

xx :: (Num a, Ord a) => a -> a -> a
xx x y = x + 67 + y

yy :: (Integral a, Num a, Ord a) => a -> Bool
yy x  = (mod x 2 == 0)

-- https://en.wikipedia.org/wiki/Collatz_conjecture
chain :: (Integral a) => a -> [a]  
chain 0 = [1]
chain 1 = [1]
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1)  

numLongChains :: Int  
numLongChains = length (filter isLong (map chain [1..1000]))  
    where isLong xs = length xs > 15  