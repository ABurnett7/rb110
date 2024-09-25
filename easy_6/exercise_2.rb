# Delete vowels
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.




# Problem: Take an array with 1 or more elements.
# Each element is a string.

# Return the same array with the same string values however, all the vowels (not sometimes y) are removed.

# Examples:
# Looks like the provided examples cover my questions.
# all elements are without spaces? This only works if they are, otherwise 1 more step to iterate over each word individually


# Data.
# Input: Array of strings.

# Intermediate: 
# - 1 string (won't ever fully exist to check all chars)
# - 1 string to shovel all non vowel chars into. 
# - Key: of vowels.  UPPER AND LOWER (or map with only one case. )

# Output: Array of sames strings with no vowels.


# A: Input: array_string

# Key will be array of vowels ['a', 'e', 'i', 'o', 'u']
# Split array by words.  
# - Iterate over each words
# - Change word to list of characters
# - Select only characters that aren't vowels
# - put word back together.
# - put array back together.




def remove_vowels(array_of_words)

  key = ['a', 'e', 'i', 'o', 'u']
  output_array = []
  
  loop do 
    break if array_of_words.size == 0
    output_word = ''
    word = array_of_words.shift

    word.chars.each do |char| 
      if !key.include?(char.downcase)
        output_word << char
      end
    end
    
    output_array << output_word
  end
  output_array
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#38 minutes...couldn't get it because of the AEIOU making an element of ''...took a break...redid it in 4:30....so don't give up!

