=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. 
In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
You may, however, use integer_to_string from the previous exercise.

Examples
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
=end




def positive_or_negative(integer)
  return '' if integer.zero?
  return '+' if integer.positive?
  return '-' if integer.negative?
end

def signed_integer_to_string(integer)
  key = (((0..9).to_a).zip(('0'..'9').to_a)).to_h #Could have used an array of the strings and matched with index as well. 
  
  array_of_strings = integer.abs.digits.map { |element| element = key[element]}

  string = positive_or_negative(integer)
  
  loop do 
    string << array_of_strings.pop
    break if array_of_strings.size == 0 
  end
  string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'