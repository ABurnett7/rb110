# All Substrings
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# P: Take a string, and return all possible substrings
# *Pay attention to order, but I think my shovel method will keep them in correct order*

# Examples...be sure to get substring[0] and substring[-1]

# D: Input: String
# 2 iterations.  
# - 1 controls ending part of string,
# - next ctorls start of string
# Output: array of substrings


# A:
# CREATE: array_of_subs
# ITERATATION - 
# 1 - 0..string.size
#  2 - 0..string.size
 
#  Shovel results into array_of_subs.

#  This should keep the correct ordered
# OUTPUT: array

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# def substrings(string)

#   array_of_subs = []
#   n = string.size

#   n.times do |start_index|
#     n.times do |size|
#       break if start_index + size == string.size
#       array_of_subs << string[start_index, size + 1]
#     end
#   end

#  array_of_subs
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#10 minutes