# Multiplicative Average
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.



# P: 
# With a given array of integers, multiply them all together, then divide by the number of integers to get the average.
# ROUND!!! to 3 decimals even 

# E: 
# 3 decimals even if they are zeroes! 

# D: Input: array of integers

# calculate the product of the integers
# divide that product by the total number of integers

# output: Float with 3 decimal places

# A: CREATE product variable initialized to the product of the integers
# RETURN: product divided by length of the array rounded to 3 decimals

def show_multiplicative_average(array)
  average = (array.inject(:*) / array.size.to_f)

  puts "The result is #{format('%.3f', average)}"
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


#about 5 minutes...then spent over 5 minutes trying to figure out formatting before looking at the answer