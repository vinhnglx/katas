# n = power of prime factors
# 28 = power(2,2) * power(7,1)
#
# number_divisors of 28
# (2+1) * (1+1) = 6
#
# to find smallest triangle number that has no_of_divisors is 500
#
# triangle number = n(n+1)/2
#
# loop from 0 < no_divisors until find
# the triangle number has no_of_divisors is no_of_divisors
#
require 'prime'
require 'byebug'
class DivisibleTriangular
  def self.call(no_of_divisors)
    i = 0
    divisors = 0

    triangle_number = 0
    while divisors < no_of_divisors
      i = i + 1
      triangle_number = i*(i+1)/2
      prime_factors = Prime.prime_division(triangle_number)

      res = 1
      prime_factors.map{|x| x.last}.each do |el|
        res = res * (el+1)
      end
      divisors = res
    end
    triangle_number
  end
end

