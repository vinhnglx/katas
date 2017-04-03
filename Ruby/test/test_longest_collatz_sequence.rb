require 'helper'
require_relative '../longest_collatz_sequence'

class TestLongestCollatzSequence < MiniTest::Test
  def test_returns_longest_chain_with_starting_number_under_5
    collatz = LongestCollatzSequence.new(5)
    collatz.run

    assert_equal 3, collatz.number
    assert_equal 8, collatz.longest_chain
  end

  # def test_returns_longest_chain_with_starting_number_under_1000000
  #   collatz = LongestCollatzSequence.new(1000000)
  #   collatz.run

  #   assert_equal 837799, collatz.number
  #   assert_equal 525, collatz.longest_chain
  # end
end
