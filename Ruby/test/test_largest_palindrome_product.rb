require 'helper'
require_relative '../largest_palindrome_product'

class TestLargestPalindromeProduct < MiniTest::Test
  def test_returns_largest_palindrome_from_two_digit_numbers
    assert_equal 9009, LargestPalindrome.show(2)
    assert_equal 906609, LargestPalindrome.show(3)
  end
end

