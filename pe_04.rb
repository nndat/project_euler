=begin
Problem 04 - Largest palindrome product
state: Solved
--------------------------------------------------------------------------------
A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 × 99.
Q: Find the largest palindrome made from the product of two 3-digit numbers.
=end

def is_palindrome?(numb)
  numb = numb.to_s
  return numb == numb.reverse
end

def solve
  largest_palindrome = 0
  (100..999).each do |numb1|
    (numb1..999).each do |numb2|
      n = numb1 * numb2
      largest_palindrome = n if ((is_palindrome? n) && (n > largest_palindrome))
    end
  end
  return largest_palindrome
end

puts "The largest palindrome made from the product of two 3-digit nubers is: #{solve}"
