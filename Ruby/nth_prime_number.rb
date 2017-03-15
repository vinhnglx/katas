require 'prime'

class NthPrimeNumber
  def self.call(number)
    Prime.first(number).last
  end
end
