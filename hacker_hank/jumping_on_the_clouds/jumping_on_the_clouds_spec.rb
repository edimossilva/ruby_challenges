require "test/unit"
require_relative './jumping_on_the_clouds'

class JumpingOnTheClouds < Test::Unit::TestCase
  def test_jumping_on_the_clouds
    clouds = [0, 0, 0, 0, 1, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 3
    assert_equal expected_result, result
  end

  def test_jumping_on_the_clouds2
    clouds = [0, 0, 1, 0, 1, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 3
    assert_equal expected_result, result
  end

  def test_jumping_on_the_clouds3
    clouds = [0, 1, 0, 1, 0, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 3
    assert_equal expected_result, result
  end

  def test_jumping_on_the_clouds4
    clouds = [0, 0, 0, 1, 0, 1, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 3
    assert_equal expected_result, result
  end

  def test_jumping_on_the_clouds5
    clouds = [0, 0, 1, 0, 0, 1, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 4
    assert_equal expected_result, result
  end

  def test_jumping_on_the_clouds5
    clouds = [0, 0]
    result = jumpingOnClouds(clouds)
    
    expected_result = 1
    assert_equal expected_result, result
  end
end