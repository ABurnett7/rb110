# P:

# Take a string of at least 1 word, if more than 1 word they will be separated by spaces.
# Nothing but words and spaces will be in the string.

# Swap the first and last letter (preserving case) of each word.

# Return the string.  

# E: provided...no real edge cases with the assumptions, except maybe with 1 letter words. 
# - so first conditional: if string size is 1 return the string - didn't need it so I deleted it

# D: string to array of words(strings) and back to a string

# A:
# Input: String
# Intermediate: Array of words
#  While in array, iterate over each word, swapping (by index) the first and last letters 
#  put the array back together with join and return it. 


def swap(string)

  string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end.join(' ')

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si' #=> true
p swap('Abcde') == 'ebcdA' #=> true
p swap('a') == 'a' #=> true

# 7 minutes. 