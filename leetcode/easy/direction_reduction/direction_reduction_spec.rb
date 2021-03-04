require "test/unit"
require_relative './direction_reduction'

class DirectionReductionSpec < Test::Unit::TestCase
  def test_direction_reduction
    output = direction_reduction(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
    expected = ["WEST"]

    assert_equal expected, output
  end
end
