require 'helper'
require_relative '../largest_product_in_a_series'

class TestLargestProduct < MiniTest::Test
  def test_returns_largest_product_of_n_consecutive_digit_in_n_digit_number
    assert_equal 1, LargestProduct.call(1, "1")
    assert_equal 0, LargestProduct.call(2, "304")
    assert_equal 35, LargestProduct.call(2, "2574")
    assert_equal 288, LargestProduct.call(3, "257423423982392842395282394809")
  end
end
