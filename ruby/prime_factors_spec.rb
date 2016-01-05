# def prime_factors(num)
  # return [] if num == 1
  # if num % 2 == 0 && num > 2
    # [2] + prime_factors(num / 2)
  # elsif num % 3 == 0 && num > 3
    # [3] + prime_factors(num / 3)
  # else
    # [num]
  # end
# end

def prime_factors(num, candidate = 2)
  return [] if num == 1
  if candidate * candidate > num
    [num]
  elsif num % candidate == 0
    [candidate] + prime_factors(num / candidate, candidate)
  else
    prime_factors(num, candidate + 1)
  end
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end

  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [3] for 3" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [2, 2] for 4" do
    expect(prime_factors(4)).to eq [2, 2]
  end

  it "has factors of [5] for 5" do
    expect(prime_factors(5)).to eq [5]
  end

  it "has factors of [2, 3] for 6" do
    expect(prime_factors(6)).to eq [2, 3]
  end

  it "has factors of [7] for 7" do
    expect(prime_factors(7)).to eq [7]
  end

  it "has factors of [2, 2, 2] for 8" do
    expect(prime_factors(8)).to eq [2, 2, 2]
  end

  it "has factors of [3, 3] for 9" do
    expect(prime_factors(9)).to eq [3, 3]
  end

  it "has factors of [2, 5] for 10" do
    expect(prime_factors(10)).to eq [2, 5]
  end

  it "has factors of [2, 3, 5, 7] for 210" do
    expect(prime_factors(210)).to eq [2, 3, 5, 7]
  end

end
#  vim: set et sts=2 sw=2 ts=2 :
