# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


# P: Make a line of light switches that is n long.
# from 1 to n times, go over the line of switches and toggle them.
# When toggling skip count by 1 .. n.  So on the third time, you start at switch 3 and skip count by 3.

# E: provided...edge cases don't make sense if you have 0 lights there is no problem to solve.

# D:Input: Integer (number of lights)
# Need a way to increase skip count
# Need a way to iterate by skip count 
# Need a way to keep track of which light is on. (probably simple array with On and Off or something...)
# ***REMEMBER dealing with index vs light number; light number is index - 1 and vice versa *****

# A: 
# CREATE based on n.
# - all elements will be 'OFF'
# CREATE counter equal to 1
# CREATE loop that will break when counter is larger than array size
# ITERATE over array by index 
# - If index + 1 % counter is 0, then toggle switch
# - - Helper method with ternary to make it easier to read
# AFTER BREAK 
# RETURN ARRAY where elements that are 'On' are transformed into their index + 1

def flip(switch)
  switch == 'Off'? 'On' : 'Off'
end

def light_switches(n)
  lights_array = (1..n).map { |i| 'Off'}
  counter = 1
  loop do
    break if counter > n
    lights_array.map!.with_index do |switch, index|
      switch = ((index + 1) % counter == 0 ? flip(switch) :  switch) 
    end
    counter += 1
  end
  lights_array.map.with_index do |switch, index| 
    switch == 'On'? index + 1 : nil
  end.compact
end

#p light_switches(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

p light_switches(1000)

#19 minutes
