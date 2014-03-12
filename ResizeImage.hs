module ResizeImage where

type Point = (Int,Int)
type Resolution = (Int,Int)

generatePixelMap :: Resolution -> Resolution -> [[(Int, Int)]]
generatePixelMap (srcX,srcY) (dstX,dstY) = [ projectPixel xFactor yFactor (x, y) | x <- [1..dstX], y <- [1..dstY] ]
                                        where
                                            xFactor = fromIntegral srcX / fromIntegral dstX
                                            yFactor = fromIntegral srcY / fromIntegral dstY

projectPixel :: (RealFrac a) => a -> a -> (Int, Int) -> [(Int, Int)]
projectPixel c u (x,y) = [(round (c * (fromIntegral x)), round (u * (fromIntegral y)))]

allPairs :: [(Int, Int)]
allPairs = [ (x, y) | x <- [1..4], y <- [5..8] ]
