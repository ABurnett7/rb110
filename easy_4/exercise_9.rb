=begin
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
=end

# P:
# Input:  Integer >= 0
# Output:  String value of that integer

# Rules: 
# - Explicit: Do not use Integer#to_s,etc. 
# - Implicit:
 
# Questions:   Only input will be integers? No floats

# assumption: No floats

# E:
# Examples: Provided

# D: Integers => Array => string

# A: 

# Use Integers#digits to convert the Integer to an array.
# Reverse the array (because digits returns the Integer digits in reversed order) 
# Use join to change the array to a string. 


# def integer_to_string(integer)
#   integer.digits.reverse.join
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

#Time 4:13

#Try again without .join.

# D: Integers => Array => Hash Lookup => Array of strings => shovel each element into a string. 

# A: 

# Use Integers#digits to convert the Integer to an array.
# Reverse the array (because digits returns the Integer digits in reversed order) 
# Use join to change the array to a string. 

def integer_to_string(integer)
  key = (((0..9).to_a).zip(('0'..'9').to_a)).to_h #Could have used an array of the strings and matched with index as well. 
  
  array_of_strings = integer.digits.map { |element| element = key[element]}

  string = ''
  
  loop do 
    string << array_of_strings.pop
    break if array_of_strings.size == 0 
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'