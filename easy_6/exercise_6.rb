# Combining Arrays
# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.


# P: merge two arrays without duplicates.

# Examples: provided and an extra from me.

# D: Input: 2 arrays
# Output: 1 array, with all elments (no duplicates) of the original arrays.

# A:
# Add arrays together, Return with only unique elements

def merge(array_1, array_2)

  return (array_1 + array_2).uniq

end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1, 3, 5, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# 3:30 minutes