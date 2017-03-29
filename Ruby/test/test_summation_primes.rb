require 'helper'
require_relative '../summation_primes'

class TestSummationPrimes < MiniTest::Test
  def test_sum_primes_below_6
    assert_equal 10, SummationPrime.call(6)
  end

  def test_sum_primes_below_1_or_0
    assert_equal 0, SummationPrime.call(1)
    assert_equal 0, SummationPrime.call(0)
  end

  def test_sum_primes_below_10
    assert_equal 17, SummationPrime.call(10)
  end

  def test_sum_primes_below_2_000_000
    # assert_equal 142913828922, SummationPrime.call(2_000_000)
  end
end
