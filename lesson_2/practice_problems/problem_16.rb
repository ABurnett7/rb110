#Write a method that returns one UUID when called with no parameters.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid()
  uuid = ''
  
  key = ('a'..'z').to_a + ('1'..'9').to_a
  sections = [8, 4, 4, 4, 12]
  sections.each do |length|
    section = ''
    length.times do 
      section << key.sample
    end
      section << '-'
      uuid << section
  end
  uuid[0..-2]
  
end


p uuid()