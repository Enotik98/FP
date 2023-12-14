module Main (main) where

import System.Environment  
import Task1 (solveMoves)
import Task4 (findPaths)

main :: IO ()
main = do
    args <- getArgs
    let a = map read args
    print $ solveMoves (head a) (a !! 1) (a !! 2)
    
    let graph = [[1, 3, 4], [0, 2, 3], [1, 3], [0, 1, 2, 4], [0, 3]]
    print $ findPaths graph 0 1