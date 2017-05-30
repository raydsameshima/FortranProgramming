ex5_5.lhs
gcd

> import Data.List 
> import GHC.Real (gcd)
>
> main = do
>   putStrLn "Let us compute gcd; put an integer m: "
>   a <- getLine
>   putStrLn "put another integer n: "
>   b <- getLine
>   
>   -- putStrLn $ "GCD is "
>   putStrLn $ "GCD of " ++ a ++ " and " ++ b ++ " = " 
>              ++ show (gcd (read a) (read b))

  *Main> main
  Input an integer m: 
  14
  Input another integer n: 
  35
  GCD of 14 and 35 = 7
