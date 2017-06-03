ex7_2.lhs

Reimplement Data.List.permutations

  *Main Data.List> permutations "read"
  ["read","erad","aerd","eard","ared","raed","daer","ader"
  ,"aedr","dear","edar","eadr","drea","rdea","reda","dera"
  ,"edra","erda","drae","rdae","rade","dare","adre","arde"
  ]

> import Data.List hiding (permutations)
>
> main = do
>   putStrLn "Let's permutate! Put a string: "
>   x <- getLine
>   return $ permutations x

http://www.geocities.jp/m_hiroi/func/haskell06.html

Let us start a helper function, select.
This select function selects an element of the given list 
and returns a tuple of (it, rests).

> select :: [a] -> [(a,[a])]
> select [x]    = [(x,[])]
> select (x:xs) = (x,xs) : [(y, x:ys) | (y,ys) <- select xs]

  *Main Data.List> select "read"
  [('r',"ead"),('e',"rad"),('a',"red"),('d',"rea")]

> permutations :: [a] -> [[a]] 
> permutations [] = [[]]
> permutations xs = [y:zs | (y,ys) <- select xs, zs <- permutations ys]

  *Main> permutations "read"
  ["read","reda","raed","rade","rdea","rdae","erad","erda"
  ,"eard","eadr","edra","edar","ared","arde","aerd","aedr"
  ,"adre","ader","drea","drae","dera","dear","dare","daer"
  ]
  *Main> length it
  24

