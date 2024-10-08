# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


hash = Hash.new(0)
arr.map do |sub_array|
  hash[sub_array[0]] = sub_array[1]
end
p hash == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}