require 'helper'
require_relative '../highly_divisible_triangular_number'

class TestDivisibleTriangular < MiniTest::Test
  def test_returns_smallest_triangle_number_over_N_divisors
    assert_equal 1, DivisibleTriangular.call(1)
    assert_equal 6, DivisibleTriangular.call(4)
    assert_equal 28, DivisibleTriangular.call(5)
    assert_equal 76576500, DivisibleTriangular.call(500)
  end
end
