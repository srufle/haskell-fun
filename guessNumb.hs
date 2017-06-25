import System.Random  
import Control.Monad(when)  
  
main = do  
    gen <- getStdGen 
    let tries = 5 
    askForNumber gen tries 0
  
askForNumber :: StdGen -> Int -> Int -> IO () 
askForNumber gen tries currentTry = do 
    let (randNumber, newGen) = randomR (1,10) gen :: (Int, StdGen)  
    putStr "Which number in the range from 1 to 10 am I thinking of? "  
    numberString <- getLine  
    when (not $ null numberString) $ do  
        let number = read numberString  
        if randNumber == number
            then putStrLn "You are correct!"
            else putStrLn $ "Sorry, it was " ++ show randNumber
        askForNumber newGen tries 0
            -- Was trying to allow for a number of guesses
            -- else 
            --     currentTry + 1
            --         if  currentTry >= tries
            --             else putStrLn $ "Sorry, it was " ++ show randNumber  
            --             then askForNumber newGen tries 0
            -- Maybe reference this to see a better example 
            -- https://wiki.haskell.org/Guess_a_random_number