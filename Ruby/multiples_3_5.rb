class Multiple35
  def self.sum(number)
    i = 0
    sum = []
    while i <= number
      if i < 3
        sum << 0
      elsif i % 3 == 0 || i % 5 == 0
        sum << i
      end
      i = i + 1
    end
    sum.inject(:+)
  end
end
