package com.crebma.primeFactors

object PrimeFactors {

  def factors(num: Int) : List[Int] = {
    factors(num, 2)
  }

  def factors(num: Int, candidate: Int) : List[Int] = {
    if (num == 1) {
      List[Int]()
    } else if (num % candidate == 0) {
      candidate :: factors(num / candidate, candidate)
    } else {
      factors(num, candidate + 1)
    }
  }
}

//  vim: set et sts=2 sw=2 ts=2 :
