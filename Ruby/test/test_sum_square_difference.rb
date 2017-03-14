require 'helper'
require_relative '../sum_square_difference'

class TestSumSquareDifference < MiniTest::Test
  def test_returns_sum_square_of_natural_number_from_1_to_n
     assert_equal 0, SumSquare.call(0)
    assert_equal 1, SumSquare.call(1)
    assert_equal 5, SumSquare.call(2)
    assert_equal 14, SumSquare.call(3)
    assert_equal 385, SumSquare.call(10)
    assert_equal 2870, SumSquare.call(20)
  end

  def test_returns_square_of_sum_of_natural_number_from_1_to_n
    assert_equal 0, SquareSum.call(0)
    assert_equal 1, SquareSum.call(1)
    assert_equal 9, SquareSum.call(2)
    assert_equal 36, SquareSum.call(3)
    assert_equal 3025, SquareSum.call(10)
    assert_equal 44100, SquareSum.call(20)
  end

  def test_return_difference_between_sum_square_vs_square_sum
    assert_equal 0, SquareSum.call(0) - SumSquare.call(0)
    assert_equal 0, SquareSum.call(1) - SumSquare.call(1)
    assert_equal 4, SquareSum.call(2) - SumSquare.call(2)
    assert_equal 2640, SquareSum.call(10) - SumSquare.call(10)
    assert_equal 41230, SquareSum.call(20) - SumSquare.call(20)
  end

end
