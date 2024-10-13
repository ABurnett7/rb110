# Merge Sorted Lists
# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.


# P: Combine two arrays in a sorted order

# E: 
# - do not sort the result array 
# - There may be 1 or more element of the same value in all three arrays.
# - input arrays are sorted

# D: Input: two arrays
# Need empty output array
# Need a way to determine the next lowest value of the two input arrays
# Need a way to keep track of values already used (probably just delete as you go)
# Need a way to put the next lowest value in the output arrray
# Output: 1 sorted array (without actually sorting it)

# A: CREATE output (merged_arrays)
# CHECK the first element in each input array.
# - SHOVEL the lowest 
# - DELETE the lowest
# -- tie breaker? delete from array_1
# WHEN one array is empty, move all elements (in the right order) into the output array.
# RETURN merged_arrays

def merge(array_1, array_2)
  merged_arrays = []

  loop do
    break if array_1.empty? || array_2.empty?
    if array_1[0] <= array_2[0]
      merged_arrays << array_1.delete_at(0)
    else
      merged_arrays << array_2.delete_at(0)
    end
  end
  
  loop do
    break if array_1.empty? && array_2.empty?
    
    if array_2.empty?
      loop do
        break if array_1.empty?
        merged_arrays << array_1.delete_at(0)
      end
    end
    
    if array_1.empty?
      loop do
        break if array_2.empty?
        merged_arrays << array_2.delete_at(0)
      end
    end
  end
  merged_arrays
end


p merge([1, 5, 9], [2, 6, 8])  == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

#26 minutes

#second try:

def merge(array_1, array_2)
  merged = []

  loop do 
    break if array_1.empty? || array_2.empty?
    if array_1[0] < array_2[0]
      merged << array_1.delete_at(0)
    else
      merged << array_2.delete_at(0)
    end
  end

  if array_1.empty?
    loop do 
      break if array_2.empty?
      merged << array_2.shift
    end
  elements
    loop do
      break if array_1.empty?
      merged << array_1.shift
    end
  end
  merged

end