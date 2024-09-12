=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; 
if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
You may, however, use the string_to_integer method from the previous lesson.

Examples

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
=end


# P:
# Input:  
# Output:  

# Rules: 
# - Explicit: Same, but now ***may*** also include + or -
# - Implicit:
 
# Questions: 
# Will the leading character always be a number, + or -? assumption: yes

# E: provided
# Examples: 

# D: same as before, probably could refactor.  

# A: 

# Create array as before 
# Delete nil if it is in array. 
# convert array to integer as before. 

# Final step check first character of string, if - multiply by -1 if not, leave number as is. 


def string_to_signed_integer(string)
  string_nums = ('0'..'9')
  integer_nums = (0..9)

  key = string_nums.zip(integer_nums).to_h

  digits = string.chars.map do |i|
    i = key[i]
  end

  digits.delete(nil)
  number = 0
  counter = digits.size - 1

  digits.each do |digit|
    number += digit * 10**counter
    counter -= 1
  end
 string[0] == '-' ? number * -1 : number
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Time 13:40. 