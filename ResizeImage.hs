module ResizeImage where

type Point = (Int,Int)
type Resolution = (Int,Int)

generatePixelMap :: Resolution -> Resolution -> [Point]
generatePixelMap (srcX,srcY) (dstX,dstY) = projectPixel xFactor yFactor (5,3)
                                        where
                                            xFactor = dstX / srcX
                                            yFactor = dstY / srcY

projectPixel :: Num -> Num -> Point -> [Point]
projectPixel c u (x,y) = [(2*x,2*y)]

