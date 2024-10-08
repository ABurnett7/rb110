=begin 

A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.
=end 

# P - D basically the same
# A check if year is before 1752, if so, return true if divisible by 4 no matter if it is also divisible by 100.

def leap_year?(year)

  if year < 1752 
    return true if (year%4).zero?
    false
  else
    return true if year % 400 == 0
    return false if year % 100 == 0
    return true if year % 4 == 0
    false
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# Time just over 3 minutes. 