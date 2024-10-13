# Matching Parentheses?
# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# P: take a string argument and make sure the parenthesis are balanced.

# E: provided : must always have an ( before a )

# D: Input: string with 0 or more: (, and 0 or more: )
# Need to make sure there is the same count of ( and )
# If not, return false.
# Need to make sure ( comes before: )
# counter would probably work where ( = 1 and ) = -1
# if counter ever is below 0 return false
#   counter shouldn't end on anything but 0, becuase the frist condition will return false if that is the case
# Default Output true

 #  false if the number of each parentheses type isn't the same. # or just use counter....I think I'll just use counter

#  A: CREATE Counter equal to 0
#  Iterate over each character of the string.
#  IF there is a ( then INCREMENT counter by 1
#  IF there is ) then DECREMENT counter by 1

#  RETURN False IF Counter is every < 0

#  AFTER ITERATION if counter != 0, RETURN FALSE

#  Default RETURN true


def balanced?(string)
  counter = 0
  string.chars.each do |char|
    if char == '('
      counter += 1
    elsif char == ')'
      counter -= 1
    else
      next
    end
    return false if counter < 0
  end
  return false if counter > 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

# Note that balanced pairs must each start with a (, not a ).

#8:30 minutes