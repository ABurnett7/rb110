# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Problem:
# same as before but exclude non alpha chars

# algorithm.  Use ('a'..'z') as key to check against all chars.downcase
# string.chars.  delete_if not in Key
# put back together


def word_sizes(string)
  validated_string = string.chars.delete_if { |char| !(('a'..'z').to_a + [' ']).include?(char.downcase) }
  
  validated_string.join.split.map { |word| word.size}.each_with_object(Hash.new(0)) do |number, hash|
    hash[number] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# 9:30, used a new method (delete_if)