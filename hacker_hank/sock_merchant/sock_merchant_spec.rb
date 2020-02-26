require "test/unit"
require_relative './sock_merchant'

class SockMerchantSpec < Test::Unit::TestCase
  def test_world
    socks_count = 9
    socks = [10, 20, 20, 10, 10, 30, 50, 10, 20]
    result = sockMerchant(socks_count, socks)
    
    expected_result = 3
    assert_equal expected_result, result
  end
end