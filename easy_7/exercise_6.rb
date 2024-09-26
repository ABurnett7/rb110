# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.


# P: Take string, return with every other char upcased, but don't count non-alpha characters in the count for 'every other'. 


# Example: Nothing new...

# Data: input String
# again, use array_of_chars

# NO need a way to keep track of whether or not last char was alpha or not. (flag)
# NO -only upcase / downcase when flag indicate to.

# *** LIke this better: Or need new 'index' of only alpha characters (counter)
#                       - when alpha, upcase on even counter count... 
# put array_of_chars back together
# output: evey other alpha char upcased 


# A: 
# CREATE array_of_chars.
# CREATE counter equal to Zero  
# ITERATE with new string... not transform.... over each char.  Use same keys...If counter even and alpha-char, upcase, if counter odd and alpha-char downcase, if char counter increments by one.  If not alpha-char, return alpha-char.
#  - Shovel results into new string.

# RETURN new string.

def staggered_case(string)
  array_of_chars = string.chars
  counter = 0
  key = (('a'..'z').to_a + ('A'..'Z').to_a)

  array_of_chars.each_with_object('') do |char, new_string|
    if key.include?(char) == false
      new_string << char
    else
      new_string << (counter.even? ? char.upcase : char.downcase)
      counter += 1
    end
  end
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#12 minutes...tried to say oh like last time too much, next time rewrite data and algo from scratch. 