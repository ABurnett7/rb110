# Given the array below
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.


#Solution 1 

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

p flintstones.each_with_object({}) { |name, hash| hash[name] = flintstones.index(name)}

#Solution 2

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

names_hash = {}
counter = 0
loop do 
  break if counter == flintstones.size
  names_hash[flintstones[counter]] = counter 
  counter += 1
end

p names_hash

#Solution #3 

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

names_hash_2 = Hash.new(0)

flintstones.each_with_index do |name, index|
  names_hash_2[name] = index
end

p names_hash_2