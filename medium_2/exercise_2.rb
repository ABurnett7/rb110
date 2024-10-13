# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:


# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M


# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# P.  Input a string and see if it can be spelling using at most 1 of each letter in each block one time.  So no double letters. Also, only capital letters allowed.  

# E: provided, covers the quesions of reusing letters and case sensitivity.  

# D: Input: String
# Need a way to access the blocks.
# Need a way to iterate over the string 
# Need a way to keep track of if a letter was used
# Output: boolean that indicates whether the string only used (at most, 1 letter from each block)

# A: CREATE Key of hashes. 
# SPLIT word into array of chars.
# ITERATE over chars.
# IF char is in hash delete the key value pair
# - check keys, then values
# - if key, delete_key
# - if value, delete_if
# If char not in hash (has_key? / has_value?) RETURN FALSE
# Otherwise RETURN true


  # key = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', E], [F, S], [J, W], [H, U], [V, I], [L, Y], [Z, M]]

  def block_word?(word)
    block = {'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A', 'G'=>'T', 'R'=>'E', 'F'=>'S', 'J'=>'W', 'H'=>'U', 'V'=>'I', 'L'=>'Y', 'Z'=>'M'}
    chars_array = word.chars
  
    chars_array.each do |char|
      if block.has_key?(char.upcase)
        block.delete(char.upcase)
      elsif block.has_value?(char.upcase)
        block.delete_if { |k, v| v == char.upcase}
      else
        return false
      end
    end
    true
  end
  
  p block_word?('BATCH') == true
  p block_word?('BUTCH') == false
  p block_word?('jest') == true
  p block_word?('apples') == false
  p block_word?('Baby') == false
  
  
  # 30 minutes. 