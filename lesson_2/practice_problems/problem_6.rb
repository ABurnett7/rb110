# Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# ...like this:

# (Name) is a (age)-year-old (male or female).

munsters.each do |name_hash|
  p "#{name_hash[0]} is a #{name_hash[1]["age"]}-year-old #{name_hash[1]["gender"]}" 
end