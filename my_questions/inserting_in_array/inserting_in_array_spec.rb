require "test/unit"
require_relative './inserting_in_array'

class InsertingInArraySpec < Test::Unit::TestCase
  def test_insert_num_in_array
    array = [10, 20, 30, 40]
    num = 15
    position = 1
    result = insert_num_in_array(array, num, position)

    assert_equal [10, 15, 20, 30, 40], result
  end

  def test_insert_num_in_array_beginning
    array = [10, 20, 30, 40]
    num = 5
    position = 0
    result = insert_num_in_array(array, num, position)

    assert_equal [5, 10, 20, 30, 40], result
  end

  def test_insert_num_in_array_end
    array = [10, 20, 30, 40]
    num = 35
    position = 3
    result = insert_num_in_array(array, num, position)

    assert_equal [10, 20, 30, 35, 40], result
  end
end