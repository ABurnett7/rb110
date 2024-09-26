# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.


# P: Take an array and see if it includes an element

# Examples: provided

# D: Array, loop / iteration

# A: ITERATE through the array
# CHECK each element to see if it is equal to the element your searching for
# RETURN True if found
# ELSE RETURN False 

def include?(array, element)
  counter = 0

  loop do
    break if counter == array.size
    return true if array[counter] == element
    counter += 1
  end
  false

end



p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

#4:30 minutes