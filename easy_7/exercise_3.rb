# Capitalize Words
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# P:
# take a string of words, return the string with the starting character, when possible, capitalized and the rest of the words lowercase.

# Examples:
# Nothing jumping out (make sure all other chars are lowercase)
# Empty strings? nothing in examples assume there are no empty strings inputted. 

# D:
# input: string of random capitalization
# need to iterate over the string by word **not char NOTE - ARRAY
# I think I can mutate the words in the string.  
#  - If not, need a results string too. 
#  Put string back together. 
# output: string with each word capitalized. 

# A:
# CREATE: array_of_words
# ITERATE: Mutate (or repalce words if mutate doesn't work) with first char upcasesd first character. 
# Put string back together - might be different if mutate doesn't work
# RETURN string. 


def word_cap(string)
  string.split.map { |word| word.capitalize}.join(' ')

end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


#5ish minutes