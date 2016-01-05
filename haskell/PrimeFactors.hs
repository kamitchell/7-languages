module PrimeFactors (primeFactors) where

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors x
    | (x `mod` 2 == 0) && (x > 2) = 2 : (primeFactors (x `div` 2))
    | (x `mod` 3 == 0) && (x > 3) = 3 : (primeFactors (x `div` 3))
    | otherwise = [x]

--  vim: set et sts=4 sw=4 ts=8 :
