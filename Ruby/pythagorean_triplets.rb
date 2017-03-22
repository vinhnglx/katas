require 'byebug'
class PythaTriplt
  def self.call(number)
    result = []

    for a in 1..number
      for b in 1..number
        c = number - a - b
        if (a**2 + b**2 == c**2)
          result << [a,b,c]
        end
      end
    end
    result.flatten.uniq
  end
end
