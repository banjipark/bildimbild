module Main (main) where

import Codec.Picture

main = do
	img <- readImage "images/abschnitt.jpg"
	case img of
		Left err -> do
			putStrLn err
		Right i -> savePngImage "holla.png" i