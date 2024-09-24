# Alphabetical Numbers
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# P: take an array of integers, sort by their english names 
# Only need to worry about 0 - 19.
# Return the INTEGERS sorted.  


# E: seems straight forward.

# Data.  Key 1 - 19 => words

# Algorithm: 
# Might be able to map and sort...

# If not...map each integer to an array, use key to add 2nd element (word) into each 
# sort_by word, 

# Create new array, shovel in first value of each pair


alpha_nums = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
nums = (0..19).to_a

KEYS = nums.zip(alpha_nums).to_h

def alphabetic_number_sort(array_of_numbers)
  array_of_numbers.map! do |number|
    [KEYS[number], number]
  end.sort!

  array_of_numbers.map do |pair|
    pair[1]
  end.flatten
  
  # sorted = []
  # array_of_numbers.each do |pair|
  #   sorted << pair[1]
  # end
  # sorted

end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#13 minutes with dumb error....