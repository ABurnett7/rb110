# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.



# P: Split an array in half, return each half as an array in a larger array.  If there are an odd number of elements, include the extra element in the first half


# E: provided.

# D: Input: Array

# Output: Array of Arrays.

# A: 
# CREATE: Output_array 
# CREATE: divider variable (based on length) / 2 (if length is odd + 1)
# Slice array based on divider variable 
# For first half [0, divider]
# for second half [divider, divider]

# RETURN: Output_array

def halvsies(array)
  divider = (array.length.odd? ? (array.length+1)/2 : divider = array.length/2)
  [array[0, divider], array[divider, divider]]
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true


#About 15 minutes