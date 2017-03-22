require 'helper'

require_relative '../pythagorean_triplets'

class TestPythagoreanTriplets < MiniTest::Test
  def test_returns_pythagorean_triplets
    assert_equal [200, 375, 425], PythaTriplt.call(1000)
  end
end
