import System.Random   
  
main = do  
   myGen  <- getStdGen
   print $ take 5 (randomRs (1,6) myGen :: [Int])
   myGen2 <- newStdGen 
   print $ take 5 (randomRs (1,6) myGen2 :: [Int])
