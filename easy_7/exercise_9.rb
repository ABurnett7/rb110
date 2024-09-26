# Multiply All Pairs
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.


# P: take two arrays.  Each array will have at least 1 number.  Find the product of every possible pair between each array. return all products in a new array sorted in ascending values.


# E: Pretty straight forward.

# D: Input 2 arrays
# need away to get all possible combos
# by index is probably the easiest.  Need to iterate over both arrays' indices....
# - 1 fast...array_A[0] combined with each of array_B[0] - [10]
# then...up increase array_A index and do it again...ARGF
#   so two loops, one only increases when the first is done ( and then the first resets)

#   get each combo's product, and shovel it into an output array.
# Output: 1 array, which has the products of all possible combos of the two arrays

# A: CREATE counter = 0
# CREATE: products_array
# CREATE LOOP: 
# BREAK loop when counter is equal to Array_A's size.
# USE times method to track index of Array_B
# -the pattern will be Array_A[counter - 0] * Array_B[times_index 0 - size-1]
# SHOVEL each combo's product into the products_array
# Counter += 1

# SORT products_array
# RETRUN products_array


# def multiply_all_pairs(array_A, array_B)
#   products_array = []
#   counter = 0
#   n = array_B.size
#   loop do
#     break if counter == array_A.size
#     n.times do |index|
#       products_array << (array_A[counter] * array_B[index])
#     end
#     counter += 1
#   end
#   products_array.sort
# end



def multiply_all_pairs(array_A, array_B)
  products_array = []
  a = array_A.size
  b = array_B.size
  
  a.times do |a_index|
    b.times do |b_index|
      products_array << (array_A[a_index] * array_B[b_index])
    end
  end
  products_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])  == [2, 4, 4, 6, 8, 8, 12, 16]


# 13:30 minutes