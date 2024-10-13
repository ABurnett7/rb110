
def fibonacci(n)
  return 1 if n < 3

  penutlimate = 1
  ultimate = 1
  (n-2).times do 
    ultimate, penutlimate = (penutlimate + ultimate), ultimate
  end

  ultimate
end




p fibonacci(20) == 6765 #=> true
p fibonacci(100) == 354224848179261915075 #=> true
# fibonacci(100_001) # => 4202692702.....8285979669707537501

#Less than 5 minutes