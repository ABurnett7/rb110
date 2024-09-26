# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Problem: reverse an array without using the built in methods Array#revserse or Array#reverse!

# E: Provided....

# D: 
# Input: Array
# Intermeidate Array.
# Output: Same as input array

# A: 
# CREATE: Int: Array

# Iterate over first array, deleting each element and putting it in the Intermeidate array. 
# (This array will be the original order)

# Iterate over intermediate array by removing from the end and putting it back into the original array. 

# RETURN: original Array



def reverse!(list)
  holding_array = []

  loop do
    break if list.size == 0
    holding_array << list.shift
  end
  loop do
  break if holding_array.size == 0
  list << holding_array.pop
  end
  list
end




list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

# 14:15 minutes spent time chasing a solution that would've been cleaner but I couldn't figure out