=begin
Problem 09 - Special Pythagorean triplet
state: Solved
--------------------------------------------------------------------------------
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  >>>  a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

=begin
Phân tích:
a + b + c = 1000 -> c = 1000 - (a + b)
-> a^2 + b^2 = (1000 - (a + b))^2 = 1000^2 - 2000(a + b) + (a + b)^2 = 1000^2 - 2000(a + b) + a^2 + b^2 + 2ab
-> 1000^2 -2000(a + b) + 2ab = 0
-> 500,000 - 1000a - 1000b + ab = 0
-> 1000(500 - a) = b(1000 - a)
-> b = 1000(500 - a) / (1000 - a) and 0 < a < 500

=end

def solve
  (1...500).each do |a|
    if (1000 * (500 - a)) % (1000 - a) == 0 then
      b = (1000 * (500 - a)) / (1000 - a)
      c = 1000 - a - b
      return a, b, c
    end
  end
end

a, b, c = solve
puts a, b, c, a*b*c
