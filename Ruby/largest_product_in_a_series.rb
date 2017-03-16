require 'byebug'

class LargestProduct
  def self.call(consecutive, no)
    numbers = no.split("").map(&:to_i)
    pairs = numbers.each_cons(consecutive)

    pairs.map {|a| a.inject{|a, i| a * i}}.max
  end
end
