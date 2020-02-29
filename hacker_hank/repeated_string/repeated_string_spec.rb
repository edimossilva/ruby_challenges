require "test/unit"
require_relative './repeated_string'

class CountingValleysSpec < Test::Unit::TestCase
  def test_repeatedString
    string = 'aba'
    char_count = 10
    result = repeatedString(string, char_count)
    
    expected_result = 7
    assert_equal expected_result, result
  end

  def test_repeatedString2
    string = 'a'
    char_count = 10
    result = repeatedString(string, char_count)
    
    expected_result = 10
    assert_equal expected_result, result
  end
end