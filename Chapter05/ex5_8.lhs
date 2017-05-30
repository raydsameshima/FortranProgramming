ex5_8.lhs

> function :: (Enum a, Fractional a) => Int -> a
> function n = sum $ take n [d,d..]
>   where
>     d = 1/(fromIntegral n)

> main :: IO ()
> main = do
> --  putStrLn "Input an integer n:"
> --  a <- getLine
>   putStrLn $ " 100000000/100000000 in Fractional = " ++ (show $ function 100000000)

$ time ./ex5_8_haskell 
 100000000/100000000 in Fractional = 1.0000000022898672

 real 0m7.556s
 user 0m7.399s
 sys  0m0.090s
