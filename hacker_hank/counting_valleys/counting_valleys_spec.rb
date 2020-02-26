require "test/unit"
require_relative './counting_valleys'

class CountingValleysSpec < Test::Unit::TestCase
  def test_counting_valleys_1
    steps_count = 8
    steps_string = 'UDDDUDUU'
    result = countingValleys(steps_count, steps_string)
    
    expected_result = 1
    assert_equal expected_result, result
  end
end