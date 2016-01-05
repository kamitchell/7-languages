package prime_factors_test

import (
	"prime_factors"

	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

var _ = Describe("Factors", func() {
	It("has factors of 1 as []", func() {
		Expect(prime_factors.Factors(1)).To(Equal([]int{}))
	})

	It("has factors of 2 as [2]", func() {
		Expect(prime_factors.Factors(2)).To(Equal([]int{2}))
	})

	It("has factors of 3 as [3]", func() {
		Expect(prime_factors.Factors(3)).To(Equal([]int{3}))
	})

	It("has factors of 4 as [2, 2]", func() {
		Expect(prime_factors.Factors(4)).To(Equal([]int{2, 2}))
	})
})

//  vim: set et sts=2 sw=2 ts=2 :
