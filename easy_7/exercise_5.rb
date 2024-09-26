# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# P:
# Take a string and return a NEW string with every other letter capitalized.  Though blanks and other characters can not be capitalized, they are used when counting 'every other' for capitalization.

# E: Start with a capital letter

# Data: Input: string
# Find a way to look at each character by index (array)
# When index is even, make it capital.
# When it is odd, down case it.
# put chars back together as string
# Output: string with every other capitalized

# A:
# CREATE array_of_chars *NOT WORDS*
# ITERATE and TRANSFORM with index.
# - if index is even, upcase, else downcase
# Put string back together
# RETURND String

def staggered_case(string)
  array_of_chars = string.chars

  array_of_chars.map!.with_index { |char, index| index.even? ? char.upcase : char.downcase }

  array_of_chars.join
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# 6:30 minutes