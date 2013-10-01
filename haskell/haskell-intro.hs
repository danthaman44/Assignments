-- Problem 1: Write myZip which zips two lists
myZip lst1 lst2 = [(lst1 !! i, lst2 !! i) | i < min (length lst1) (length lst2) ]

-- Recursive
myZip [] [] = []
myZip (x1:xs1) (x2:xs2) = (x1, x2):myZip xs1, xs2
-- Problem 2: Write qsort implementing quicksort
qsort [] = []

qsort lst =
  let pivot = lst !! 0
      less = [x | x <- lst, x  < pivot]
      greater = [x | x <- lst, x >= pivot]
  in (qsort less) ++ [pivot] ++ (qsort greater) 

qsort(pivot:xs) 
  let less = qsort [x | x <- xs
-- Problem 3: Write function fib n, that computes the nth number in the fibonacci sequence in 0(n) time
-- Problem 3 Bonus: Construct an infinite sequence of fibonacci numbers, fibs
fib n =
  let fibHelper (a, b 0 = a 
      fibHelper (a, b) 1 = b
      fibHelper (a, b) n = fibHelper(b, a+b)(n-1) 
  in fibHelper (0,1) n

fibs = 0 : 1 : next fibs
   where next (a : b : xs) = (a+b) : next (b: xs)



-- Problem 4: http://projecteuler.net/problem=6
euler4 = 
  let sumOfSquares =
      let sum  = sum( [x * x | x <- [1..100]])
      squareOfSum = sum [x | x <- [1..100])
  in sumOfSquares - squareOfSum



-- Problem 5: http://projecteuler.net/problem=9
euler9 = 
  head [a * b* c | a <- [1..1000], b <- [1..a],
        let c = 1000 - a -b, c > 0, a^2 + b^2 == c^2]

-- Problem 6: http://projecteuler.net/problem=5
