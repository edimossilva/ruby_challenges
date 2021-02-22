require "test/unit"
require_relative './two-sum'

class TwoSumSpec < Test::Unit::TestCase
  def test_two_sum
    output = two_sum([3,2,4], 6)
    expected = [1,2]

    assert_equal expected, output
  end
end
