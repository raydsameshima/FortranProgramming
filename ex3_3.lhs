ex3_3.lhs

> main :: IO ()
> main = do
>   putStrLn "Is a leap or common year?"
>   a <- getLine
>   if isLeap (read a :: Int) 
>     then putStrLn "leap year"
>     else putStrLn "common year"

> isLeap :: Integral a => a -> Bool
> isLeap n
>   | n `mod` 400 == 0 = True
>   | n `mod` 100 == 0 = False 
>   | n `mod` 4   == 0 = True
>   | otherwise        = False

rdsMacBookPro:Fortran rds$ ./ex3_3 
 Is n year a leap or common year? n=
2100
 Common year
rdsMacBookPro:Fortran rds$ runhaskell ex3_3.lhs
Is a leap or common year?
2100
common year

