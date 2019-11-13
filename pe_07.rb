=begin
Problem 07 - 10001st prime
state: SOLVED
--------------------------------------------------------------------------------
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
the 6th prime is 13.
Q: What is the 10001st prime number?
=end
LIMIT = 10001

def is_prime? numb
  return false if numb < 2
  return true if numb == 2
  (2..Math.sqrt(numb).to_i).each do |n|
    return false if numb % n == 0
  end
  return true
end

def solve
  count       = 1
  numb        = 3
  last_prime  = 3
  while count < LIMIT do
    if is_prime? numb then
      count += 1
      last_prime = numb
    end
    numb += 2
  end
  return last_prime
end

puts solve
