# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# P: sum the sum of all sub arrays in an array of integers.

# E: Nothing sticking out, might want to hold sub arrays in an array to check work if needed.

# D: 
# Input: Array
# Need a way to get sub arrays
# -Need a way to keep track of the sum of all sub array - likely will also be output

# Output: Integer (sum of sum of all sub arrays )

# A:
# CREATE: Total variable initialized to 0
# CREATE: Algorigthm to get all sub-arrays.
# Use index: 0 - counter, where counter increments by 1 until array size. 
# -During each iteration, take sum of sub-array and add it to the total. 
# RETURN the total variable. 


def sum_of_sums(array)

  total = 0

  array.size.times do |index|
    total += (array[0, index + 1]).sum #spaced out how to do range of array by index, so did it a different way by slice. Should have been array[0..index]
  end
  total
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

#11 minutes