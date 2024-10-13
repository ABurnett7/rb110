def fibonacci_last(n)
  return 1 if n < 3

  penutlimate = 1
  ultimate = 1
  (n-2).times do 
    ultimate, penutlimate = (penutlimate + ultimate), ultimate
  end

  ultimate % 10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# do clunky to compute the last one, but my solution works on the others. 