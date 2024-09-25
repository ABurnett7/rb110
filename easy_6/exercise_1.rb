# P: Take a floating number where the leading integer is from 0 - 360.
# Return the float in a (DEGREES, MINUTES, SECONDS) format
# Where minutes and seconds are two digits 0 - 59

# Examples: Provided ( I don't know enough to make my own )

# Data.  Input: Float. 
# 3 Intermediaries: Degrees, Minutes, Seconds.
# Degrees = the integer to the left of the decimal.
# Minutes = the integer to the left of the decimal after the first deciaml was multiplied by 60
# Seconds = the remaining integer that was left after multiplying the 2nd decimal by 60.

# Convert each integer into a string.  If string size is less than 2 (for minutes and seconds add leading 0)
# Put all units into a return string with appropriate symbols. (* , ', and ")


# *** WATCH OUT FOR ROUNDING IF THIS DOESN"T NEATLY CONVERT TO 1 & 2 DIGIT NUMBERS ***

# A: 
# CREATE: Output String
# CREATE: 1 Intermediary - ARRAY (degrees_array), index[0] = degrees, 1 = minutes and 2 = seconds.
# CREATE: Helper Method to convert decimal to minutes and decimal to seconds (same equation might as well extract it)

# MAIN FUNCTION: Input: decimal_degrees
# CONVERT: decimal_degrees to integer, rounded down and ADD to degrees_array. IF integer == 360, shovel 0
# USE HELPER METHOD: put float in helper method.
#   - convert output to integer, put into degrees_array[1]
# USE HELPER METHOD: same thing as above, but put integer into degrees_array[2]

# Now Array should be integers representing : [degrees, minutes, seconds]
# Transform(MAP) array to change to strings.  
# Transform(MPA) array to make sure minutes and seconds are size == 2
# SHOVEL String Values into OUTPUT string with * , ', and " (output << array[0] + * + array[1]...etc)

# HELPER METHOD(remaing_decimal)
# multiply the remainint_decimal by 60 and return the result.


DEGREE = "\u00B0"

def minutes_seconds(remaining_decimal)
  remaining_decimal * 60
end

def dms(decimal_degrees)
  degrees_array = []
  output_string = ''
  minutes_decimal = nil
  seconds_decimal = nil


  degrees_array << ( decimal_degrees.to_i == 360 ? 0 : decimal_degrees.to_i )

  minutes_decimal = minutes_seconds(decimal_degrees - decimal_degrees.to_i).round(10)
  degrees_array << minutes_decimal.to_i

  seconds_decimal = minutes_seconds(minutes_decimal - minutes_decimal.to_i).round(2)
  degrees_array << seconds_decimal.to_i
  
  degrees_array.map! { |num| num.to_s}
  output_string << degrees_array[0] + DEGREE 

  degrees_array.unshift

  degrees_array.map! do |str|
    if str.size < 2 
      '0' + str
    else 
      str
    end
  end
  output_string << degrees_array[1] + "'" + degrees_array[2] + "\""

end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#38 minutes