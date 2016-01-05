module PrimeFactors (primeFactors) where

primeFactors :: Integer -> [Integer]
primeFactors x = primeFactorsInternal x 2
    where
        primeFactorsInternal x i
            | x == 1 = []
            | x < i * i = [x]
            | x `mod` i == 0 = i : primeFactorsInternal (x `div` i) i
            | otherwise = primeFactorsInternal x (i + 1)

--  vim: set et sts=4 sw=4 ts=8 :
