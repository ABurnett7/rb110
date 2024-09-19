# Create a hash that expresses the frequency with which each letter occurs in this string:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... } #implies sorting


statement = "The Flintstones Rock"

# Solution 1

p statement.chars.sort.tally.delete_if { |k, v| ('a'..'z').include?(k.downcase) == false}

# Solution 2

p (statement.chars.sort.each_with_object({}) do |letter, hash|
  if ('a'..'z').include?(letter.downcase)
    hash[letter] = statement.count(letter)
  end
end)

