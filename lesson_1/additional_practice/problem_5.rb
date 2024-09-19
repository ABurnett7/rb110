# In the array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# Solution 1

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each { |name| p "#{name} at index #{flintstones.index(name)} starts with 'Be'" if name.start_with?('Be') }

# Solution 2

flintstones.each_with_object([]) do |name, array|
  if name[0, 2] == 'Be'
    array << name
  else
    next
  end
  p flintstones.index(array[0])
end

# Solution 3

p flintstones.index{ |name| name[0, 2] == 'Be'}