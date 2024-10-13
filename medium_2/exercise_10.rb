# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.


# P: 
# Input: Integer(n)
# - Calculate the square of the sum of all the positive integers to n
# - Calculate the sum of the squares of the all the positive integers to n
# Return the difference (positive)

# E: n will always be positive.

# D: 
# Input: Integer
# Need to iterate over the range of numbers to calculate the sum and square itself
# Need to iterate over the range of numbers to square them each and get a sum.
# Need to subtract these two numbers and return the difference in a the form of a POSTIVE integer.
# Output: Integer

# A: 
# CREATE variable (difference) that is the SUM all positive integers in a range and square it.
# ITERATE over the range again, square each number. SUBTRACT from the Difference variable.

# RETURN Difference variable's absolute value. 

def sum_square_difference(n)
  difference = (1..n).to_a.reduce(:+)**2

  (1..n).each { |i| difference -= (i**2) }
  (difference).abs
end

p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

#11:15 minutes