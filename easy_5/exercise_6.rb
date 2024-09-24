# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.


# P.
# Take a string with 0 or more words and return a hash that shows the number of different sized words.
# Include punctuation (anything but a space) in the character counts.

# E. Empty string my throw off method, should be easy enough to return empty hash if string is empty.


# D. Strings to arrays to hashes

# A. Split string into array of words.
# Map each word to an integer that is it's string size.

# Use tally on the Array.

###DON't FORGET empty string return#### don't need

# def word_sizes(string)
  
#   string.split.map { |word| word.size}.each_with_object(Hash.new(0)) do |number, hash|
#     hash[number] += 1
#   end

# end



# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}


# 5 minutes with Array#tally, 7:30 to remove and write my own tally