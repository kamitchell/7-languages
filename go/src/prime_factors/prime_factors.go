package prime_factors

func Factors(num int) []int {
  if num > 1 {
    return []int{num}
  } else {
    return []int{}
  }
}

//  vim: set et sts=2 sw=2 ts=2 :
