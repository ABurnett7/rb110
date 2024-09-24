# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.


# P: take a string and return a new string with no characters in a row doubled.

# E. What I'm thinking might throw an error with 0 and 1 characters...if so return immediately.

# D. strings, array of chars showveled into a new string.

# A. 
# CREATE array of chars.
# CREATE empty output String
# Iterate over array of chars. with index
# -shovel first char in 
# -shovel next chars in, if previous char (check with index) didn't MatchData

# return output new string


def crunch(string)
  output_string = ''
  string.chars.each_with_index do |char, i|
    if i == 0
      output_string << char 
      next
    end

    if char != string.chars[i - 1]
      output_string << char
    end
  end
  output_string
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

#7 minutes