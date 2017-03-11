require 'helper'
require_relative '../multiples_3_5'

class TestMultiple35 < MiniTest::Test
  def test_return_sum_of_multiple_numbers_of_3_or_5
    assert_equal 0, Multiple35.sum(1)
    assert_equal 0, Multiple35.sum(2)
    assert_equal 3, Multiple35.sum(3)

    assert_equal 3, Multiple35.sum(4)
    assert_equal 8, Multiple35.sum(5)
    assert_equal 14, Multiple35.sum(6)
    assert_equal 33, Multiple35.sum(10)
  end
end
