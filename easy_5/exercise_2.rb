=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use Ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

=end

# PEDAC

# P:
# Input:  Integer (positive, negative or 0)
# Output:  String of digits representing an hour and minutes.

# Rules: 
# - Explicit: Return what time it, based on the integer provided.  Negative will subtract from midnight, positive will add to midnight. 

# - Implicit: Return a time in 24 hour 
 
# Questions:   assumption: 

# E:
# Examples: provided.

# D: 

# Nested arrays? 24 nested arrays with 0 - 59 in them. 
# No need for nested arrays, 1 array 0 - 60 will work for the minutes.....probably don't even need that.

# - should work, divide number by 60 to get the correct array, then pull the digit in the array for the minute.  Need to account for when you go beyond 24...


# A: 
# For hours: 

# Absolute value.float / 60 (if greater than 60) then subtract 24 until the number is less than 24.
# if decimal is > 0, then add 1 to integer.  
# Make the integer positive or negative (based on initial input) if negative, subtract from 24, if positive add to 0.

# For minutes.  After the abs.float / 60, take the decimal and multiply by 60. no floats in the return.  

# for hour and minutes, if < 10, add 0 at front. 

# prepend hours to string ':' and append minutes to it. 


def time_of_day(time_in_minutes)
  abs_minutes = time_in_minutes.abs
  
  hours = 0
  minutes = 0

  string_hours = ''
  string_minutes = ''


  if abs_minutes > 60  
    hours_decimal_minutes = (abs_minutes.to_f / 60)
    until hours_decimal_minutes < 24
      hours_decimal_minutes -= 24
    end
    if (hours_decimal_minutes - hours_decimal_minutes.to_i) > 0 
      if time_in_minutes.negative?
        hours = hours_decimal_minutes.round - 1
        minutes = ((hours_decimal_minutes - hours_decimal_minutes.to_i) * 60).round
      else
        hours = hours_decimal_minutes.round 
        minutes = ((hours_decimal_minutes - hours_decimal_minutes.to_i) * 60).round
      end

    else
      hours = hours_decimal_minutes.to_i
      minutes = 0
    end
  elsif abs_minutes < 60
    hours = 0
    minutes = abs_minutes
  else
    hours = 1
    minutes = 0
  end

  if time_in_minutes.negative?
    string_hours = (23 - hours).to_s
    string_minutes = (60 - minutes).to_s
  else
    string_hours = hours.to_s
    string_minutes = minutes.to_s
  end

  string_hours.prepend( string_hours.to_i < 10 ? '0' : '' )
  string_minutes.prepend( string_minutes.to_i < 10 ? '0' : '' )

  string_hours + ":" + string_minutes

end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000)  == "02:00"
p time_of_day(800)  == "13:20"
p time_of_day(-4231) == "01:29"

#Time? Forgot timer, maybe 45 minutes to an hour...