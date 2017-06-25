import Data.List  
  
solveRPN :: (Num a, Read a) => String -> a  
solveRPN = head . foldl foldOperation [] . words
    where   foldOperation(x:y:ys) "*" = (x * y):ys
            foldOperation(x:y:ys) "+" = (x + y):ys
            foldOperation(x:y:ys) "-" = (y - x):ys
            foldOperation xs numStr = read numStr:xs