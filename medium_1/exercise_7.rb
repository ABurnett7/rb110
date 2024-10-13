# Word to Digit
# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# P: Convert written numbers to numerals (in string form) in a string.

# E: keep formating (spacing, dashes, etc.) between words the same.

# D: Input: string with alhpa-numbers 

# Need a way to check if a word is a number, and replace it with the correct digit.
# -so a key look up...

# Output: string with numeral values instead of alpha numbers

# A: 
# CREATE a key ('one' => '1', etc. ) - keep everything as a string. 
# ITERATE over the key, putting each pair into a string substitution mehtod, thus swapping the values.
# RETURN the new string 

def word_to_digit(string)
  key = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', }

  key.each do |k, v|
    string.gsub!("#{k}", "#{v}")
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.' # => true

#23 minutes... 4 minutes after I read the gsub! hint


