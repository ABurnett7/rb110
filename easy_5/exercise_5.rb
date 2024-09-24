# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# P: take a string of 1 or more words that includes characters not in the alphabet.
# ALL LOWERCASE !
# Replace all non-alphabetic chars with spaces
# ***However*** never put 2 spaces in a row so 

# E: "***hi*****what's up" == ' hi what s up'

# Data: Key = ('a'..'z')
# string to array of chars.
# back to new String

# Algorithm: 
# string to array of chars.
# replace non alpha with spaces.
# Shovel each character into new string.
# Check if previous char was a space, if so, don't shovel new space.


def cleanup(string)
  array_of_chars = string.chars
  output =''

  replaced = array_of_chars.each_with_object([]) do |char, array|
    if ('a'..'z').include?(char)
      array << char
    else
      array << ' '
    end
  end

  replaced.each_with_index do |char, index|
    output << char if index == 0

    if ('a'..'z').include?(char)
      output << char
    else
      if output[-1] != ' '
        output << char
      end
    end
  end
  output

end


p cleanup("---what's my +*& line?") == ' what s my line '

# 13 minutes, had brain fog and couldn't get map to work to replace non-alpha with ' ' so had to redo first part in a much longer way. 