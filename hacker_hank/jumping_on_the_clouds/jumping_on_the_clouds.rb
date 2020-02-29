#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(clouds)
  clouds_length = clouds.length
  jumps = 0
  index = 0
  loop do
    jumps+=1
    if clouds[index+2]== 1
      index+=1
    else
      index+=2
    end
    if (index+2>= clouds_length)
      break
    end
  end
  if index >= clouds_length -1
    return jumps
  end
  jumps+1
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# n = gets.to_i

# c = gets.rstrip.split(' ').map(&:to_i)

# result = jumpingOnClouds c

# fptr.write result
# fptr.write "\n"

# fptr.close()
