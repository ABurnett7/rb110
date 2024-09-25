# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# P: Take an integer input, and return the number of Fibonacci digits it takes to reach a number with the number of digits as the input.

# So. input of 2.  Fibo sequence is : 1, 1, 2, 3, 5, 8, 13.  There are 7 numbers in this sequence to get to a 2 digit number.  

# Examples: Provided. though I'm worried about memory.

# Data: 
# Input: Integer (represents the length in digits of the number we're seeking.)
# Intermediate: Array to hold the fibo numbers. Also use array size as output. 
# Intermediate to hold current number?
# Create helper method to see size of numbers.
# Output: Integer (the number of Fibo numbers it took to find an integer with the input's digits. )


# A:

# CREATE: 
# Sequence_array = [1, 1]
# Helper Method:
# - Input: integer (latest in fibo sequence)
# - Intermediate: Int to string to see size. 
# - Output: Integer (length of input in digits (10 RETURNS 2))
# - The whole thing can be input.to_s.size

# Make a simple loop 
# - ADD last two integers or sequence_array.
# - BREAK if sequence_array[0] is greater than or equal to input. (Helper Method's return)

# RETURN Length of Array. 



def integer_length(latest_fibonacci)
  latest_fibonacci.to_s.size
end

def find_fibonacci_index_by_length(length)
  sequence_array = [1, 1]

  loop do
    sequence_array << sequence_array[-2, 2].reduce(:+)

    break if integer_length(sequence_array[-1]) == length
  end
  sequence_array.size
  
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# 18 minutes