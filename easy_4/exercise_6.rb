=begin

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array

A running total is the sum of all values in a list up to and including the current element. 
Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

=end

def running_total(array)
  running_total_array = []

  array.each do |number|

    if running_total_array.empty? 
      running_total_array << number
    else
      running_total_array << running_total_array[-1] + number
    end
  end

  running_total_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])  == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

#Time 13:45 ...way overkill because I got on the wrong track misreading the problem initially.  But corrected with plenty of time. 