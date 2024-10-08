# Given this data structure write some code to return an array containing the colors of the fruits, 
# and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

p (hsh.map do |pair|
  if pair[1][:type] == 'fruit'
    pair[1][:colors].each { |color| color.capitalize!}
  elsif pair[1][:type] == 'vegetable'
    pair[1][:size].upcase!
  end
end) == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
