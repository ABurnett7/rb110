# fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".


# P: take two integers, that represent an inclusive range.
# Print all numbers in range, but when a number is divisible by 3, print 'Fizz' by 5 print 'Buzz' and by both 'FizzBuzz'

# E: seems obvious..

# D: input: 2 integers
# Need a way to check if numbers are divisible by 3 and 5
# output: print to screen

# A: Check by 3 & 5 first, then print`` 'FizzBuzz' next
# Then check by 3 only, then 5 only print appropirate text
# Otherwise print the number.


def fizzbuzz(num_1, num_2)

  (num_1..num_2).each do |i|
    if i % 5 == 0 && i % 3 == 0
      p 'FizzBuzz'
      next
    end

    if i % 3 == 0
      p 'Fizz'
    elsif i % 5 == 0
      p 'Buzz'
    else 
      p i 
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#6 minutes Didn't get it to print in a singline, next time do that