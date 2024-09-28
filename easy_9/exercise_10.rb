# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# The tests above should print true.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).



def sum(integer)
  integer.digits.sum
end

# def sum(int)
#   to_sum = int.digits
#   total = 0
#   loop do
#     break if to_sum.size == 0
#     total += to_sum.pop
#   end
#   total
# end
 
 
 puts sum(23) == 5
 puts sum(496) == 19
 puts sum(123_456_789) == 45
 
 #2:30 minutes to write both