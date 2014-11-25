module Statistics where

type Statistic = [Float] -> Float

mean :: Statistic
mean = uncurry (/) . foldr (\e (s,c) -> (e+s,c+1)) (0,0)

firstOrder :: (a -> a -> a) -> [Float] -> Float
-- firstOrder f (x:y:zs) = firstOrder f (f x y):zs
firstOrder f (x:y:[]) = f x y

high = firstOrder max
low = firstOrder min
