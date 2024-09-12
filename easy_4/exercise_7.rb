=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Examples: 

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=end

# P:
# Input: string of integers
# Output:  integer

# Rules: 
# - Explicit: Don't use String#to_i or the like. 
# - Implicit:
 
# Questions:   How is it possible to change a string to an integer without converting it? 
# assumption: 

# E: provided
# Examples: 

# D: String to array, Hash look up to change strings to integers, Math 

# A: use ranges of (0..9) and ('0'..'9') to create zipped arrays. 
# string to array, map the array from sting digits to integers.
# Math (*10**counter with the index) to put the digits back together. 

def string_to_integer(string)
  string_nums = ('0'..'9')
  integer_nums = (0..9)

  key = string_nums.zip(integer_nums).to_h

  digits = string.chars.map do |i|
    i = key[i]
  end

  number = 0
  counter = digits.size - 1

  digits.each do |digit|
    number += digit * 10**counter
    counter -= 1
  end
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

#Stopped half way through... probalby about 20 minutes total work, but it was in my head overnight. 