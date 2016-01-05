defmodule PF.PrimeFactorsTest do
  use ExUnit.Case

  test "factors of 1 are []" do
    assert PF.PrimeFactors.prime_factors(1) == []
  end

  test "factors of 2 are [2]" do
    assert PF.PrimeFactors.prime_factors(2) == [2]
  end
end
