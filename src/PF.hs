module PF (f1,f2,f3) where
f1 :: Num a => a -> a --recieves different types of numeric values and returns a value of the same type as the given one
f1 x = x*x --Returns the square of the given argument, which is no different from the product of the argument with itself

f2 :: (a -> a) -> a -> a --It is given an initial value and a function which, given any value returns another value of the same type
f2 f x = f (f (f x)) --Applies a function over a value "x". Then, the function is applied over the result of the previous step. Finally, this is done once more.

f3 :: (a -> b) -> (a -> c) -> a -> (b, c) -- It is given two functions and an initial value and returns a list 
f3 f h x= (f x, h x) --It returns a list with the results of applying both functions to the initial value separately