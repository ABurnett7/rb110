# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# The return value from map should be the following array:

[{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

p ([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |pair|
  pair.map do |inner_pair|
    inner_pair = [inner_pair[0], (inner_pair[1] = inner_pair[1] + 1)]
  end.to_h
end) == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]


