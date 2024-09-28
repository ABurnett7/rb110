# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.


def buy_fruit(array)
  array.each_with_object([]) do |pair, output_array| 
    pair[1].times do
      output_array << pair[0]
    end
  end
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

#3 minutes