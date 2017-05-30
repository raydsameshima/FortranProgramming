ex3_5.lhs

> import Control.Monad.State
> -- State s t = s -> (t,s)
>
> data Grade = A | B | C | F | O
>   deriving (Show, Eq)
>
> isIn100 :: Integral n => n -> Grade
> isIn100 n 
>   | 0  <= n && n < 60    = F
>   | 60 <= n && n < 70    = C
>   | 70 <= n && n < 80    = B
>   | 80 <= n && n <= 100  = A
>   | otherwise            = O
>  
> data ABCF = ABCF { numA :: Int
>                  , numB :: Int
>                  , numC :: Int 
>                  , numF :: Int
>                  }
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

Experiments
The basic flow is the following:

> call :: IO ()
> call = do
>   putStrLn "GRADING: "
>   a <- getLine
>   let g = isIn100 (read a :: Int)
>
>   if g == O 
>     then do
>       print O
>     else
>       do
>         print g
>         call
>
> update :: Int -> (Grade, ABCF) -> (Grade, ABCF)
> update n state = let g = isIn100 n in
>   case g of
>     O -> state
>     _ -> (g, add g . snd $ state)

  *Main> let update' n = update n (isIn100 n, zero)
  *Main> update' 59
  (F,ABCF {numA = 0, numB = 0, numC = 0, numF = 1})
  *Main> update 69 it
  (C,ABCF {numA = 0, numB = 0, numC = 1, numF = 1})
  *Main> update 79 it
  (B,ABCF {numA = 0, numB = 1, numC = 1, numF = 1})
  *Main> update 89 it
  (A,ABCF {numA = 1, numB = 1, numC = 1, numF = 1})
  *Main> update 99 it
  (A,ABCF {numA = 2, numB = 1, numC = 1, numF = 1})

