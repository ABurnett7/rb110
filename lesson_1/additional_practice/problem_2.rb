# Add up all of the ages from the Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


# Solution 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

# Soution 2

sum = 0
ages.each_value { |value| sum += value}
p sum


# Soution 3

p ages.each_with_object([]) { |(_, age), array| array << age }.sum

