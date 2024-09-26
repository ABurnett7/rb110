# Swap Case
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.


# P: swap the cases of every alphabetic char in the string **Don't use swapcase!**
# Examples: Nothing sticking out that isn't in problem. 

# Data: 
# input: string
# - need to break string word down to characters
# - check character if upper or lower case 
# - swap cases (use a KEY )
# - put string back together (or shovel into new results string)
# output: NEW string with cases swapped from input

# A: 
# USE ('a'..'z') and ('A'..'Z') as keys
# MAKE array_of_chars
# ITERATE and transform each value in the array_of_chars.  If it is lower make it upper, if it is upper make it lower, if it is neither (**NOTE nil) leave it alone. 
# JOIN array_of_chars 
# RETURN String


def swapcase(string)
  string.chars.map do |char|
    if ('A'..'Z').include?(char)
      char.downcase
    elsif ('a'..'z').include?(char)
      char.upcase
    else
      char
    end
  end.join
end


p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#8:30 minutes