defmodule PF.PrimeFactors do
  def prime_factors(num) do
    cond do
      num == 1 -> []
      rem(num, 2) == 0 && num > 2 -> [2, div(num, 2)]
      true -> [num]
    end
  end
end
