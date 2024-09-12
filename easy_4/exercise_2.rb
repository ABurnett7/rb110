=begin

Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

=end

def century(year)
  adjusted_year = (((year - 1) / 100) + 1)

  string_year = adjusted_year.to_s

  if string_year[-2] == '1' && (1..3).include?(string_year[-1].to_i)
    return string_year + 'th'
  
  elsif string_year[-1] == '1'
    return string_year + 'st'

  elsif string_year[-1] == '2'
    return string_year + 'nd'

  elsif string_year[-1] == '3'
    return string_year + 'rd'
  
  else
    return string_year + 'th'
  end

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# A few mistakes, like trying to compare integers to strings made everthing drop into else...maybe don't use else? 
# Time was just over 35 minutes. 