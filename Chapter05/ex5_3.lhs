ex5_3.lhs

> import Control.Monad
>
> main = mapM_ output [0,5 .. 90]
>   where
>     output n = do
>       putStrLn $ "deg = " ++ show n ++ 
>                  ", sine = " ++ show sine ++
>                  ", cosine = " ++ show cosine 
>       putStrLn $ " and check: " ++ show (sine^2 + cosine^2)  
>         where
>           sine = sin (n*pi/180)
>           cosine = (cos (n*pi/180))
>       
