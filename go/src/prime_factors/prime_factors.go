package prime_factors

func Factors(num int) []int {
	if num > 1 {
		candidate := 2
		result := []int{}

		for candidate <= num {
			if num%candidate == 0 {
				result = append(result, candidate)
				num /= candidate
			} else {
				candidate = candidate + 1
			}
		}

		return result

	} else {
		return []int{}
	}
}
