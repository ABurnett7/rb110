# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# P: Get all substrings of a string that are palindromes, return in an array.

# E: The order may be difficult...

# D: Use method from last problem, include Palindrome helper method.


# A: Inside itereation, only shovel if palindrome.

def is_palindrome?(substring)
  substring == substring.reverse && substring.size > 1
end

def palindromes(string)

  array_of_subs = []
  n = string.size

  n.times do |start_index|
    n.times do |size|
      break if start_index + size== string.size
      sub_string = string[start_index, size + 1]
      if is_palindrome?(sub_string)
        array_of_subs << sub_string
      end
    end
  end

 array_of_subs
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

#7 minutes, forgot to get rid of sub_strings that are only 1 letter