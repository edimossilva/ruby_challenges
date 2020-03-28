require "test/unit"
require_relative './inserting_many_in_array'

class InsertingInArraySpec < Test::Unit::TestCase
  def test_insert_many_in_array_begin
    array = [10, 20, 30, 40]
    insert_array = [11, 12, 13, 14, 15]
    index = 0
    result = insert_many_in_array(array, insert_array, index)

    assert_equal [11, 12, 13, 14, 15, 10, 20, 30, 40], result
  end

  def test_insert_many_in_array_end
    array = [10, 20, 30, 40]
    insert_array = [11, 12, 13, 14, 15]
    index = 3
    result = insert_many_in_array(array, insert_array, index)

    assert_equal [10, 20, 30, 11, 12, 13, 14, 15, 40], result
  end

  def test_insert_many_in_array_middle
    array = [10, 20, 30, 40]
    insert_array = [11, 12, 13, 14, 15]
    index = 1
    result = insert_many_in_array(array, insert_array, index)

    assert_equal [10, 11, 12, 13, 14, 15, 20, 30, 40], result
  end


end