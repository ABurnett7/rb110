=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
=end

def ascii_value(string)
  string.empty? ? 0 : string.chars.map { |character| character.ord}.inject(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# From Mitch in the student comments, you can simply do: string.sum

#Time about 5 minutes. 
