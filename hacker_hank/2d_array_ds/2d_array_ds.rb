require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(array)
  hourglass = nil

  for i in 0..3
    for j in 0..3
      sum = 0
      sum += array[i][j]
      sum += array[i][j+1]
      sum += array[i][j+2]
      sum += array[i+1][j+1]
      sum += array[i+2][j]
      sum += array[i+2][j+1]
      sum += array[i+2][j+2]
      if (hourglass == nil)
        hourglass = sum
      elsif ( sum > hourglass)
        hourglass = sum
      end
    end
  end
  
  hourglass
end
array = [
  [1,1,1,0,0,0],
  [0,1,0,0,0,0],
  [1,1,1,0,0,0],
  [0,0,2,4,4,0],
  [0,0,0,2,0,0],
  [0,0,1,2,4,0]
]
hourglassSum(array)
# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# arr = Array.new(6)

# 6.times do |i|
#     arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end

# result = hourglassSum arr

# fptr.write result
# fptr.write "\n"

# fptr.close()