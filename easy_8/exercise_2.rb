# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.


# P: Get all substrings of a string, return them in an array sorted by size. 
# *** PUT FULL STRING IN ARRAY TOO ***

# E: straight-forward...do I need to account for an empty array?

# D: Input: String
# Iteratation.

# Output: array of strings.
# A: 
# CREATE: subs_array
# ITERATE by index, slice[0, index]]then shovel string into output Array
# RETURN: output array (subs_array)


def leading_substrings(string)
  subs_array = []
  size = string.size

  size.times do |index|
    subs_array << string[0, index + 1]
  end

  subs_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#6:45 minutes