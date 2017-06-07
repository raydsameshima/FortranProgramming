ex3_5.lhs

> -- import Control.Monad.State
> -- State s t = s -> (t,s)
>
> data Grade = A | B | C | F | O
>   deriving (Show, Eq)
>
> isIn100 :: Int -> Grade
> isIn100 n 
>   |  0 <= n && n < 60    = F
>   | 60 <= n && n < 70    = C
>   | 70 <= n && n < 80    = B
>   | 80 <= n && n <= 100  = A
>   | otherwise            = O
>  
> data ABCF = ABCF { numA :: Int, numB :: Int, numC :: Int, numF :: Int }
>   deriving (Show)
>
> zero :: ABCF
> zero = ABCF 0 0 0 0
> 
> add :: Grade -> ABCF -> ABCF
> add A (ABCF a b c f) = ABCF (a+1) b     c     f
> add B (ABCF a b c f) = ABCF a     (b+1) c     f
> add C (ABCF a b c f) = ABCF a     b     (c+1) f
> add F (ABCF a b c f) = ABCF a     b     c     (f+1)
> add O k              = k
>
> grade :: ABCF -> IO ()
> grade abcf = do
>   putStrLn "Put a grade here:"
>   x <- getLine
>   let o = isIn100 (read x)
>   if o == O then
>     print abcf
>   else do
>     print o
>     grade (add o abcf)
>
> main :: IO ()
> main = grade zero

  $ runghc ex3_5.lhs
  Put a grade here:
  59
  F
  Put a grade here:
  69
  C
  Put a grade here:
  79
  B
  Put a grade here:
  89
  A
  Put a grade here:
  99
  A
  Put a grade here:
  101
  ABCF {numA = 2, numB = 1, numC = 1, numF = 1}
