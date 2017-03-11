require 'helper'
require_relative '../largest_prime_factor'

class TestLargestPrimeFactor < MiniTest::Test
  def test_a_number_is_prime_or_not
    assert_equal true, Prime.prime?(3)
    assert_equal false, Prime.prime?(10)
    assert_equal true, Prime.prime?(29)
    assert_equal true, Prime.prime?(71)
    assert_equal false, Prime.prime?(15)
  end

  def test_return_devisor_primes_of_a_number
    assert_equal [3,5], Number.devisor_numbers(15)
    assert_equal [2,3,5], Number.devisor_numbers(120)
    assert_equal [5,7,13,29], Number.devisor_numbers(13195)
  end

  def test_return_largest_primes
    assert_equal 3, Number.largest_primes(12)
    assert_equal 29, Number.largest_primes(13195)
  end
end
