require 'prime'

class SummationPrime
  def self.call(number)
    return 0 if number == 0 || number == 1
    (2..number).inject{ |s, x| Prime.prime?(x) ? s + x : s }
  end
end
