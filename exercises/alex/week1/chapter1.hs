-- I'm going to tab using two spaces as is suggested. I will also leave comments.
-- Something tells me this language's users might be the snobbiest on the planet...
-- https://wiki.haskell.org/Commenting
-- For more details, please google "tabs vs spaces haskell"


-- Recursion? In haskell?
factorial x = if x == 0 
  then 1
  else x * factorial (x - 1)
  
  
fibonacci x = if x == 1 || x == 2 
  then 1
  else fibonacci (x - 1) + fibonacci (x - 2)
  
-- Define fib less procedurally 
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

triangles = [(x, y, z) | x <- [1..10], y <- [1..10], z <- [1..10]]
rightTriangles = [(x, y, z) | (x, y, z) <- triangles, x^2 + y^2 == z^2]

-- CHAPTER 3

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

otherFact :: Int -> Int
otherFact n = product [1..n]