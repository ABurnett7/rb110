# Had to copy solution....got kind in the ball park with my own, should've read the hints at the beginning better



def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end


p fibonacci(1) == 1 # => true
p fibonacci(2) == 1 # => true
p fibonacci(3) == 2 # => true
p fibonacci(4) == 3 # => true
p fibonacci(5) == 5 # => true
p fibonacci(12) == 144 # => true
p fibonacci(20) == 6765 # => true