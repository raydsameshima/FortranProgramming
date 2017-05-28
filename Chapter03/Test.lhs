Test.lhs

> module Test where
> import Control.Monad.State
> import Control.Monad.Writer
> 
> type FibState 
>   = ( Int     -- i
>     , Integer -- fib(i-1)
>     , Integer -- fib(i-2)
>     )
>      
> fib :: Int -> Integer
> fib 0 = 0
> fib 1 = 1
> fib n = evalState fib' (2,1,0)
>   where
>     fib' :: State FibState Integer
>     fib' = do
>       (i, f1, f2) <- get
>       if i == n then 
>         return $ f1 + f2
>       else
>         do put (i+1, f1+f2, f1)
>            fib'
>
> fibSlow :: Int -> Integer
> fibSlow 0 = 0
> fibSlow 1 = 1
> fibSlow n
>   | n < 0 = 0
>   | otherwise = fibSlow (n-1) + fibSlow (n-2)

  *Test> fibSlow 30
  832040
  (1.79 secs, 508,819,384 bytes)

  *Test> fib 100000
    --
  (1.10 secs, 536,284,712 bytes)

