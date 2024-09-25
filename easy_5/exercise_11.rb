# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# P: take an integer as an argument and return an array of the digits in the same order as they were in the 
# original integer.

# Exampes: provide....what if there is not integer? return empty array?  What about negatives?

# Data: Input: Integer
# Intermediary? First array?
# Output Array, with the elements equal to the digits of the int (in same order)

# A:
# Inter to array of reversed digits, then to array of digits in correct order.

def digit_list(int)
  int.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# 3 minutes