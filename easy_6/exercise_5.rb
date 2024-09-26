# Reversed Arrays (Part 2)
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.


# Problem: Take an array and output it's elements in reversed order in a new array. 

# Examples: Povided

# D: Input: Array
# No: Intermediate data form
# Output: New Array


# A: 
# CREATE output Array
# ITERATE over array, ADD each element in order to the beginning of the output Array
# RETURN output array.


def reverse(input_array)
  output_array = []

input_array.size.times do |index|
  output_array.prepend(input_array[index])
end
output_array
end


p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
p reverse(['abc']) == ['abc']                   # => true
p reverse([]) == []                             # => true

list = [1, 3, 2]                                # => [1, 3, 2]
new_list = reverse(list)                        # => [2, 3, 1]
p list.object_id != new_list.object_id          # => true
p list == [1, 3, 2]                             # => true
p new_list == [2, 3, 1]                         # => true

# 7:15 minutes with silly error