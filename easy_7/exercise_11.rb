
# Write a method that counts the number of occurrences of each element in a given array.


# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# P write a case insenstivie tally method  for an array. 

# E: make sure to not ignore case

# D:  input array

# Need to iterate over and count each unique element
# Add the count of each element to the output_hash (counts)
# PRINT the KEY-VALUE Pairs of the hash.


# A:

# ITERATE over the UNIQUE elements of the array with a new Hash object.
# EACH iteration will create a key (element) and a value count of the element in the original array.

# PRINT KEY => VALUE of each PAIR


def tally(array)
  car_count = array.uniq.each_with_object(Hash.new(0)) do |car, count|
     count[car] = array.count(car)
   end
   car_count.each { |car, count| p "#{car} => #{count}"}
 end
 
 vehicles = [
   'car', 'car', 'truck', 'car', 'SUV', 'truck',
   'motorcycle', 'motorcycle', 'car', 'truck'
 ]
 
 tally(vehicles)
 
 # car => 4
 # truck => 3
 # SUV => 1
 # motorcycle => 2
 
 #10:30 minutes