# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.


# P: Count all upper, lower and neither case characters in a given string.

# E: Be sure to return with a float as each value in the hash.

# D: input: string
# Need premade hash, with appropriate keys initialized to 0
# Need keys for upper and lower case letters.
# Need a way to iterate over the string and increment the appropriate values in the hash.
# Need to change the count values in the hash to percents.

# Output: the hash

# A: CREATE a key of the alpha bet ( can use it for both upper and lower )
# CREATE tally hash.
# Iterate over the string, increment the appropriate value on each iteration.
# ---probably a regex way to count but I don't know regex.
# CHANGE each value to FLOAT and divide by total characters in string.
# RETURN hash

def letter_percentages(string)
  tally_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      tally_hash[:lowercase] += 1 
    elsif ('A'..'Z').include?(char)
      tally_hash[:uppercase] += 1
    else
      tally_hash[:neither] += 1
    end
  end
  tally_hash.transform_values! do |value| 
    (value.to_f / string.size)*100
  end
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }