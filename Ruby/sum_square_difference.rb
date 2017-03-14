class SumSquare
  def self.call(number)
    return number if number == 1 || number == 0
    (1..number).inject { |sum, n| sum + n * n }
  end
end

class SquareSum
  def self.call(number)
    return number if number == 1 || number == 0
    sum = (1..number).inject(:+)
    pow(sum, 2)
  end

  private

  def self.pow(x, y)
    x ** y
  end
end
