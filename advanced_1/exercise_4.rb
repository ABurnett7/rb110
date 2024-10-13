def transpose(matrix)

  new_matrix = matrix[0].map { |i| [] }

  matrix.size.times do |new_row|
    new_matrix.size.times do |new_elem|
      new_matrix[new_elem] << matrix[new_row][new_elem]
    end
  end
  new_matrix
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]