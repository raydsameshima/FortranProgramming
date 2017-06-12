ex8_2.lhs

> data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
>   deriving (Show, Eq)
> 
> type Days  = Int
> type Month = Int
> type Year  = Int
>
> isLeap :: Year -> Bool
> isLeap n
>   | n `mod` 400 == 0 = True
>   | n `mod` 100 == 0 = False
>   | n `mod` 4   == 0 = True
>   | otherwise        = False
>
> m2d :: Month -> Days
> m2d 1  = 31
> m2d 2  = 28
> m2d 3  = 31
> m2d 4  = 30
> m2d 5  = 31
> m2d 6  = 30
> m2d 7  = 31
> m2d 8  = 31
> m2d 9  = 30
> m2d 10 = 31
> m2d 11 = 30
> m2d 12 = 31
> m2d _  = error "m2d: wrong input"
>
> daysIn :: Year -> Days
> daysIn n
>   | isLeap n  = 366
>   | otherwise = 365
>
> -- from 0001/01/01 to n/12/31
> daysFromOne :: Year -> Days
> daysFromOne n = sum [daysIn i | i <- [1..n]] 
>
> -- need a modification on Feb!!!
> countDays :: Year -> Month -> Days -> Int
> countDays y m d 
>   | isLeap y && m > 2 = daysFromOne (y-1)
>                       + sum [ m2d i | i <- [1..(m-1)]] 
>                       + d + 1
>   | otherwise         = daysFromOne (y-1)
>                       + sum [ m2d i | i <- [1..(m-1)]] 
>                       + d
>
> dayOfTheWeek' :: Year -> Month -> Days -> Int
> dayOfTheWeek' y m d = (countDays y m d) `mod` 7
>
> dayOfTheWeek :: Year -> Month -> Days -> Week
> dayOfTheWeek y m d = case dayOfTheWeek' y m d of
>   1 -> Mon
>   2 -> Tue  
>   3 -> Wed
>   4 -> Thu
>   5 -> Fri
>   6 -> Sat
>   0 -> Sun
>   _ -> error "dayOfTheWeek: "

> main = do
>   putStrLn "Put year"
>   y <- getLine
>   putStrLn "Put month"
>   m <- getLine
>   putStrLn "Put day"
>   d <- getLine
>   putStrLn "Given day is ... "
>   print $ dayOfTheWeek (read y) (read m) (read d)
