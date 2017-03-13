require 'helper'
require_relative '../smallest_common_multiple'

class TestSCM < MiniTest::Test
  def test_returns_greatest_common_divisor_of_a_and_b
    assert_equal 3, GCD.run(3, 21)
    assert_equal 3, GCD.run(9, 3)
    assert_equal 10, GCD.run(20, 30)
    assert_equal 1, GCD.run(3, 5)
    assert_equal 0, GCD.run(3, 0)
  end

  def test_returns_lowest_common_multiple_of_a_and_b
    assert_equal 10, LCM.run(2, 5)
    assert_equal 60, LCM.run(20, 30)
    assert_equal 2, LCM.run(1, 2)
  end

  def test_returns_lowest_common_multiple_of_digits_from_1_to_number
    assert_equal 6, LCM.run_multiple(3)
    assert_equal 2520, LCM.run_multiple(10)
    # assert_equal 232792560, LCM.run_multiple(20)
  end
end
