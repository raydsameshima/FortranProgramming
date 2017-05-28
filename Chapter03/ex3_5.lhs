ex3_5.lhs

> import Control.Monad.State
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
>        
> call = do
>   putStrLn "GRADING: "
>   a <- getLine
>   let g = isIn100 (read a :: Int)
>
>   if g == O 
>     then do
>       print O
>       return $ add g
>     else
>       do
>         print g
>         call
>
