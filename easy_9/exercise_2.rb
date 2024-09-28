# Double Doubles
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# P: Take an integer and determine if it is a couble number, that is 2 sets of repeating digits.
# If the integer is a double number, return it.  If not retrun double the integer.

# E: nothing sticking out...ARGF

# D: Input: Integer
# First if the number  has odd number of digits, then double it.
# Next, determine if the number is a double number and output accordingly
# -Helper method
# Output: Integer (either double input or input depending on if it is a repeating number)

# A: Put integer as a string.
# CHECK length of string, 
#  -IF it odd, double the integer  
#   --RETURN it
# HELPER METHOD:
# -Integer to String
# --string length / 2 = middle
# ---string[0, middle] == string[middle, middle]?
# IF true, 
# -RETURN integer, 
# IF false 
# -RETURN double the integer.

def repeating(int)
  string_int = int.to_s
  middle = string_int.length / 2
  string_int[0, middle] == string_int[middle, middle]
end

def twice(int)
  return int * 2 if int.to_s.size.odd?
  
  if repeating(int)
    int 
  else
    int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

#12:30 minutes