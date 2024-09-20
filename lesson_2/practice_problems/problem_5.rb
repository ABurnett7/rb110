# Consider this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Determine the total age of just the male members of the family.


# Solution 1

total = munsters.each_with_object([]) do |(names, data), array|
  array << (data["gender"] == "male"? data["age"] : 0)
  
end.reduce(:+)

p total

# Solution 2
