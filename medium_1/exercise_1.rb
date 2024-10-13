# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# P: rotate an array, by putting the first element last.
# Do not mutate the original Array
# so return a new array, or at least the return of something that doesn't mutate an array.  

# E: 

# D: Input: Array
# Need a way to create or return an array where the first element is now the last...or put another way, all elements now have an index of 1 less than before....
# Output: array

# A: 
# ITERATE with index.
# - each index will be transformed to be the next index up.  when at last index, it will be transformed to be the first index.  Hopefull will work.
# Should return transformed array and not mutate original.

def rotate_array(arr)
  n = arr.size - 1 # make code below less busy. 

  arr.map.with_index do |_, index|
    index == n ? arr[0] : arr[index + 1]
  end
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


#13:30 minutes