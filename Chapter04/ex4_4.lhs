ex4_4.lhs

> main = do
>   print "How many days between 0001/01/01 and n/12/31?"
>   print "Put n: "
>   x <- getLine
>   let n = read x :: Integer
>   return $ s n
>
> s :: Integer -> Integer
> s n = 365*n + (n `div` 4) - (n `div` 100) + (n `div` 400)

  *Main> main
  "How many days between 0001/01/01 and n/12/31?"
  "Put n: "
  1985
  725006
