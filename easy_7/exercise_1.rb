# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.


# def interleave (arr_1, arr_2)
#   p arr_1.zip(arr_2).flatten(1)
# end

def interleave (arr_1, arr_2)
  p arr_1.map.with_index { |element, index| [element, arr_2[index]]}.flatten(1)
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


#Both work, no PEDAC because it was too simple.
#3 minutes