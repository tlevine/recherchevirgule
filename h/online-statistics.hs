module Statistics where

class Statistic a where
  initialize :: a
  reduce     :: a -> Float -> a
  finalize   :: a -> Float

data Mean = Mean Float Int
instance Statistic Mean where
  initialize = Mean 0 0
  reduce (Mean sum n) x = Mean (sum + x) (n + 1)
  finalize (Mean sum n) = sum / ((fromIntegral n) :: Float)

data Max = Max Float
instance Statistic Max where
  initialize = Max 0
  reduce (Max x) y = Max $ max x y
  finalize (Max x) = x

data 
