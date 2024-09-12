=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. 
For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

=end

def multisum(integer)
  total = 0

  (1..integer).each do |number|
    total += number if (number % 3).zero? || (number % 5).zero?
  end
  
  total
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

#Time 5:45