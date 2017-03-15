require 'helper'
require_relative '../nth_prime_number'

class TestNthPrimeNumber < MiniTest::Test
  def test_returns_1st_prime_number
    assert_equal 2, NthPrimeNumber.call(1)
  end

  def test_returns_2nd_prime_number
    assert_equal 3, NthPrimeNumber.call(2)
  end

  def test_returns_nth_prime_number
    assert_equal 5, NthPrimeNumber.call(3)
    assert_equal 13, NthPrimeNumber.call(6)
    assert_equal 104743, NthPrimeNumber.call(10001)
  end
end
