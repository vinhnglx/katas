require 'helper'
require_relative '../fibo_nums_less_than_a_number'

class TestFiboNums < MiniTest::Test
  def test_return_one_if_n_less_than_or_equal_to_one
    assert_equal [1], FiboNum.show(0)
    assert_equal [1], FiboNum.show(1)
  end

  def test_return_array_fibo_less_than_number
    assert_equal [1,2], FiboNum.show(2)
    assert_equal [1,2,3], FiboNum.show(4)
    assert_equal [1,2,3,5], FiboNum.show(6)
    assert_equal [1,2,3,5,8,13,21,34,55,89], FiboNum.show(100)
  end

  def test_return_fibo_number
    assert_equal 1, FiboNum.fibo(1)
    assert_equal 5, FiboNum.fibo(4)
    assert_equal 8, FiboNum.fibo(5)
  end

  def test_a_number_is_fibonacci_or_not
    assert_equal true, FiboNum.fibo?(5)
    assert_equal true, FiboNum.fibo?(89)
    assert_equal false, FiboNum.fibo?(20)
  end
end
