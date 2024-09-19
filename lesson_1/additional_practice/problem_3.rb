# In the ages hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.


# Solution 1 

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 42, "Eddie" => 10 }

ages = ages.select { |_, age| age < 101}

p ages


