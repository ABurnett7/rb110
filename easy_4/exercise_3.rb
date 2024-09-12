=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

=end

# P:
# Input: positive number (year)
# Output:  true or false (if the year is divisible by 400 or 4 and not 100)

# Rules: 
# - Explicit: inputs will be greater than 0
# - Implicit:
 
# Questions: Need to validate integer is positive?  assumption: No (could with a simple loop though)

# E:
# Examples: provided

# D: 
# Math, integers, conditionals to dictate which Boolean is returned

# A:
# 4 possibilities here.  Probably easiest to deal with them highest to lowest, as that's how the exceptions role.

# If a year is divisible by 400 then it is a leap year (return true)
# If a year is divisible by 100 then it is not a leap year (return false)
# If a year is divisible by 4 then it is a leap year (return true)
# (else) If a year is not divisible by 4 then it is not a leap year (return false)

# Pseudo Code?: 

# Create method that takes 1 integer
# check rules above, and return proper Boolean.

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# 9 minutes 18 seconds. 