class GCD
  def self.run(a, b)
    if a == 0 || b == 0
      0
    else
      set_1 = (1..a).select { |x| if a % x == 0 then x end }
      set_2 = (1..b).select { |x| if b % x == 0 then x end }
      (set_1 & set_2).max
    end
  end
end

class LCM
  def self.run(a, b)
    return 0 if a == 0 || b == 0
    return (a * b) / GCD.run(a, b)
  end

  def self.run_multiple(number)
    range = Range.new(2, number)
    res = 1
    range.each do |el|
      res = self.run(res, el)
    end
    res
  end
end
