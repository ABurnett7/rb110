# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2 # => a is 2
b = [5, 8] # => b is [5, 8]
arr = [a, b] # => arr is [2, [5, 8]]

arr[0] +=  # => arr is [4, [5, 8]] a is 2
arr[1][0] -= a  # => arr is [4, [3, 8]] a is 2, b is [3, 8]