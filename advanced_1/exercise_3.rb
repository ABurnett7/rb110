matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


def transpose(matrix)

  new_matrix = matrix[0].map { |i| [] }

  matrix.size.times do |new_row|
    new_matrix.size.times do |new_elem|
      new_matrix[new_elem] << matrix[new_row][new_elem]
    end
  end
  new_matrix
end

p transpose(matrix)

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]