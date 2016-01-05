defmodule PF.PrimeFactors do
  def prime_factors(num) do
    if num == 1 do
      []
    else
      [num]
    end
  end
end
