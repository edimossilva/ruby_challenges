require "test/unit"
require_relative './split_strings'

class SplitStringsSpec < Test::Unit::TestCase
  def test_solution1
    output = solution('abc')
    expected = ['ab', 'c_']

    assert_equal expected, output
  end
  def test_solution2
    output = solution('abcdef')
    expected = ['ab', 'cd', 'ef']

    assert_equal expected, output
  end
end
