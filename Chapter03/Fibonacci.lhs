Fibonacci.lhs

> module Fibonacci where
> import Control.Monad.State
> -- State s t = s -> (t,s)
> 
> type FibState 
>   = ( Int, Integer, Integer ) -- (i, fib (i-1), fib (i-2))
>      
> -- Memomized Fibonacci sequence
> fib :: Int -> Integer
> fib 0 = 0
> fib 1 = 1
> fib n = evalState fib' (2,1,0)
>   where
>     fib' :: State FibState Integer -- FibState -> (Integer, FibState)
>     fib' = do
>       (i, f1, f2) <- get
>       if i == n then 
>         return $ f1 + f2
>       else
>         do put (i+1, f1+f2, f1)
>            fib'
>
> -- O(2^n)
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

 
