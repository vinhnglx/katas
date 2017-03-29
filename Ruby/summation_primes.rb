require 'prime'

class SummationPrime
  def self.call(number)
    (0..number).inject{ |s, x| Prime.prime?(x) ? s + x : s }
  end
end
