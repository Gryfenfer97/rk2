rk2 :: (Double -> Double -> Double) -> Double -> Double -> Double -> Double -> Double
rk2 f x0 y0 x1 step
    | x0 >= x1  = y0
    | otherwise = rk2 f (x0+step) y1 x1 step
    where k1' = k1 f x0 y0 step
          k2' = k2 f x0 y0 step k1'
          y1 = y0 + (k1' + k2')/2


k1 :: (Double -> Double -> Double) -> Double -> Double -> Double -> Double
k1 f xi yi step = step * f xi yi


k2 :: (Double -> Double -> Double) -> Double -> Double -> Double -> Double -> Double
k2 f xi yi step k1' = step * f (xi+step) (yi+k1')
