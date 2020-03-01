require "test/unit"
require_relative './2d_array_ds'
require 'matrix'  # bundled with Ruby

class HourglassSumSpec < Test::Unit::TestCase
  def test_hourglassSum
    array = [
      [1,1,1,0,0,0],
      [0,1,0,0,0,0],
      [1,1,1,0,0,0],
      [0,0,2,4,4,0],
      [0,0,0,2,0,0],
      [0,0,1,2,4,0]
    ]
    result = hourglassSum(array)
    
    expected_result = 19
    assert_equal expected_result, result
  end

end

