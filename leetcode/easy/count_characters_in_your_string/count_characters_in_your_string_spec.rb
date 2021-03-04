require "test/unit"
require_relative './count_characters_in_your_string'

class CountCharactersInYourString < Test::Unit::TestCase
  def test_count_characters_in_your_string
    output = count_characters_in_your_string("aba")
    expected = {"a" => 2, "b" => 1}

    assert_equal expected, output
  end
end
