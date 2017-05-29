StateMonad.lhs
https://wiki.haskell.org/State_Monad

> module StateMonad where
>
> import Control.Monad.State
> -- runState :: State s a -> s -> (a, s)

Example 1 StateGame
Parse a string of dictionary
  'a', 'b', 'c'
Game is to produce a number from the string.
By default, the game is off (False), a 'c' toggles the game on (True) and off.
A 'a' gives +1 and a 'b' gives -1.

> type GameValue = Int
> type GameState = (Bool, Int)
>
> playGame :: String -> State GameState GameValue
> playGame [] = do
>   (_, score) <- get
>   return score
> playGame (x:xs) = do
>   (on, score) <- get 
>   case x of
>     'a' | on -> put (on,     score +1) -- on == True
>     'b' | on -> put (on,     score -1)
>     'c'      -> put (not on, score)
>     _        -> put (on,     score)
>   playGame xs
>
> startState :: GameState
> startState = (False, 0)

  *StateMonad> evalState (playGame "ab") startState 
  0
  *StateMonad> evalState (playGame "ca") startState 
  1
  *StateMonad> evalState (playGame "cabca") startState 
  0
  *StateMonad> evalState (playGame "abcaaacbbcabbab") startState 
  2
