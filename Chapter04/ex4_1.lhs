ex4_1.lhs
solar year

> days = 365.2422 :: Double
>
> subDigit :: Double -> Double
> subDigit d = d - fromIntegral (floor d)  
>
> hour   = (*24) . subDigit $ days
> minit  = (*60) . subDigit $ hour
> second = (*60) . subDigit $ minit
>
> main = do
>   putStrLn "A year is: "
>   putStrLn $ show (floor hour) ++ " hours"
>   putStrLn $ show (floor minit) ++ " minits"
>   putStrLn $ show second ++ " seconds."

  *Main> main
  A year is: 
  5 hours
  48 minits
  46.08000000218453 seconds.
