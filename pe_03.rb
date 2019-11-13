=begin
Problem 03 - Largest prime factor
state: Solved
--------------------------------------------------------------------------------
The prime factors of 13195 are 5, 7, 13 and 29.
Q: What is the largest prime factor of the number 600851475143 ?
=end

def solve(numb)
  factor = 2
  last_factor = 1
  while numb > 1 do
    factor += 1 unless numb % factor == 0
    last_factor = factor
    while numb % factor == 0 do
      numb /= factor
    end
  end
  return last_factor
end

numb = 600851475143
puts "Largest prime factor of #{numb} is #{solve(numb)}"
