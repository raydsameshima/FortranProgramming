state.lhs

> import Control.Monad.State
>
> function ns = do
>   putStrLn "Put an integer:"
>   x <- getLine
>   let n = read x :: Int
>   if n>0 then do
>     function (n:ns)
>   else do
>     putStrLn $ "The sum is " 
>     print $ sum ns
>     return ns

  *Main> function []
  Put an integer:
  10
  Put an integer:
  20
  Put an integer:
  30
  Put an integer:
  0
  The sum is 
  60
  [30,20,10] 

