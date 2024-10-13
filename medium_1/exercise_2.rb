# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.


# P: take two arguments, an integer and a number.
# -Rotate the digit number from the end of the integer to the end.
# (123, 2) == 132

# E: What if 2nd number is higher than integer's size?
# -assume that won't happen for now. 

# What if 2nd integer is size of whole array? 
# --might need a special return, but not in examples. 

# # D: Input: 2 Integers.  The 2nd Integer will determine which digit of the first integer is moved to the ones column. 
# # Need to match the digit's index to the 2nd number provided.
# #  - 2nd number's index * -1 is the digit to move. 
# # Use this digit to rotate.  
# Output: (Sometimes) new integer with the digit 'rotated' to the end.

# A: (Don't want to use map since I did that last problem.) gonna use map...nope select
# IF 2nd number equals 1, return first integer
# CREATE array of digits of the integer in the same order as the integer.
# split array from index (A) 0 to 1 less than 2nd_number *-1, (B) 2nd_number *-1 and (C) 1 more than 2nd_number *-1.
# CREATE array in ACB order
# CHANGE array back to integer and RETURN

def rotate_rightmost_digits(integer, position)
  index = position - 1
  digits = integer.digits

  (digits.select.with_index { |_, i| i != index }.reverse << digits[index]).join.to_i
end

# def rotate_rightmost_digits(integer, position) #Refactored to make it easier to read
#   index = position - 1
#   digits = integer.digits
#   output_array = digits.select.with_index { |_, i| i != index }.reverse 
#   output_array<< digits[index]
#   output_array.join.to_i

# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#took way to long, not paying attention to index position. 