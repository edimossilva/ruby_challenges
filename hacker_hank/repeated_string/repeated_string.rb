#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(complete_string, char_count)
  complete_string_length = complete_string.length
  
  count_a_per_complete_string = complete_string.count('a')
  complete_complete_strings_quantity = char_count / complete_string_length
  count_a_in_all_complete_strings = complete_complete_strings_quantity * count_a_per_complete_string
  
  
  incomplete_complete_string_char_quantity = char_count % complete_string_length
  if(incomplete_complete_string_char_quantity>0)
    incomplete_string = complete_string[0..(incomplete_complete_string_char_quantity-1)]
  else
    incomplete_string = ''
  end
  
  count_a_in_all_incomplete_strings = incomplete_string.count('a')

  count_a_in_all_complete_strings + count_a_in_all_incomplete_strings
end


# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.to_s.rstrip

# n = gets.to_i

# result = repeatedString s, n

# fptr.write result
# fptr.write "\n"

# fptr.close()
