count = 1

loop do
   p "#{count} is #{count.odd? ? 'odd!' : 'even!'}" 
  count += 1
  break if count > 5
end