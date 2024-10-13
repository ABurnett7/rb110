# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# P: Make a 4 point diamond, where the longest (middle) row is the length of the integer provided.  Each row, going up and down will be two stars less and two spaces more.

# E: - odd integer.

# D: Input: Integer
# Need a way to dynamically change number of rows.
# -count up, by 2s from 1 diamond to n diamonds, then count down.
# -print rows as appropriate - if easier, maybe count spaces?
# Output: diamond

# A: 
# FIND THE MIDDLE, middle will be both middle row and middle of the rows. 
#  - Middle will be (n/2) + 1
# CREATE stars counter equal to 1
# CREATE space counter equal to (n-stars) / 2
# CREATE lines (might need a middle_coun)
# - First line is  space * ' ' + '*' * counter + space * ' '
# -- counter += 2
# --after counter == n Start counting the other way
# - First line is  space * ' ' + '*' * counter + space * ' '
# -- coutner -= 2
# break after counter == 1 print

def diamond(n)

  stars = 1

  loop do
    spaces = (n - stars) / 2
    p ' ' * spaces + '*' * stars + ' ' * spaces
    break if stars == n
    stars += 2 
  end
  loop do
    stars -= 2
    spaces = (n - stars) / 2
    p ' ' * spaces + '*' * stars + ' ' * spaces
    break if stars == 1
  end
end

diamond(1)

# *

diamond(3)

#  *
# ***
#  *


diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# 15 minutes...need to redo...