# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

p arr.map { |i| i.to_i}.sort.map { |i| i.to_s}.reverse

# My solution was not what the book had in mind.  I missed the descending order part, which I think sent me in the wrong direction

p (arr.sort do |a, b|
  b.to_i <=> a.to_i
end)
