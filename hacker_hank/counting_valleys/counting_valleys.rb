#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(steps_count, steps_string)
  current_level = 0
  previous_level = 0
  valey_count = 0
  steps_string.each_char do |step|
    if (step == 'U')
      current_level += 1
    else
      current_level -= 1
    end

    if (current_level == 0 && previous_level == -1)
      valey_count += 1
    end 

    previous_level = current_level
  end
  return valey_count
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# n = gets.to_i

# s = gets.to_s.rstrip

# result = countingValleys n, s

# fptr.write result
# fptr.write "\n"

# fptr.close()
