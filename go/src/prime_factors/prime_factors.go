package prime_factors

func Factors(num int) []int {
	if num > 1 {
		if num%2 == 0 && num > 2 {
			return []int{2, num / 2}
		} else {
			return []int{num}
		}
	} else {
		return []int{}
	}
}
