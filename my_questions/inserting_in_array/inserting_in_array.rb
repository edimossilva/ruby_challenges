#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def insert_num_in_array(array, num, index)

  aux1 = array[index]
  array[index] = num

  for i in (index + 1) .. (array.length() -1)
    aux2 = array[i]
    array[i] = aux1
    aux1 = aux2
  end

  array.push(aux1)
  array
end
