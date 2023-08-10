module Main where
import Test.QuickCheck 
import PF 

--f1 should work for any parameter of type Double.
prop_f1 :: Double -> Bool 
prop_f1 x = f1 x == x * x 

--f2 should be applicable to any function that operates on strings
prop_f2 :: Fun String String -> String -> Bool
prop_f2(Fun _ f)  x = f2 f x == f (f (f x)) --x must be a String 

--f2 should be applicable to any pair of functions that operate on Strings 
prop_f3 :: Fun String String -> Fun String Int -> String -> Bool
prop_f3(Fun _ f) (Fun _ h) x = f3 f h x == (f x, h x) --x must be a String

main :: IO ()
main = do
    quickCheck prop_f1    
    quickCheck prop_f2
    quickCheck prop_f3  