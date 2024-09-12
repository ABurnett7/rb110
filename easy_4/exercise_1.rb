=begin 
Write a method that takes two strings as arguments, determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.
 
=end

# P:
# Input: 2 strings 
# Output:  returns the strings concatenated together based on length (shortlongshort)

# Rules: strings will be different lengths
 
# Questions: None assumption: 

# E: 

# Examples: provided (including edge case of string with 0 length)

# D: strings, maybe an array to append the strings to based on length? 


# A: 
# 1 - define a method that takes two strings as arguments
#  - compare the lengths of the strings

# concatenate the long string to the end of the shorter string and then concatenate the shorter string onto that.
# Doing so would be mutating, so unless it happens at the same time, it will result in something funny.

# But...only need to worry about the return, no need to mutate the strings...which leads to the following: return short + long + short 

# Finally Algorithm:
# define a method that takes two strings as arguments
#  - compare the lengths of the strings
#  - return short + long + short 
# end

def short_long_short(string_1, string_2)
  shorter = (string_1.size < string_2.size ? string_1 : string_2)
  longer = (string_1.size > string_2.size ? string_1 : string_2)

  return shorter + longer + shorter
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# First try: 9 minutes 18 seconds 