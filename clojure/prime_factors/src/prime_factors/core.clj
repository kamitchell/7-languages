(ns prime-factors.core)

(defn primes
  ([num] (primes num 2))
  ([num candidate]
   (cond
     (< num 2) []
     (> (* candidate candidate) num) [num]
     (zero? (rem num candidate)) (cons candidate (primes (/ num candidate) candidate))
     :else (primes num (inc candidate)))))
