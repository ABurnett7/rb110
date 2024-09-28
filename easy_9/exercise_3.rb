# def sequence(int)
#   (1..int).to_a
# end

def sequence(int)
  (1..int).each_with_object([]) { |i, array| array << i}
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# less than a minute
