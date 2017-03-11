require 'byebug'
class FiboNum
  def self.fibo(number)
    if number <= 1
      1
    else
      fibo(number - 1) + fibo(number - 2)
    end
  end

  def self.fibo?(number)
    f1 = 0
    f2 = 1
    i = 0
    begin
      i = f1 + f2
      f1 = f2
      f2 = i
    end while i < number

    i == number
  end

  def self.show(number)
    fibos = []
    if number > 1
      i = 1
      (1..number).each do |n|
        fibos << n if fibo?(n)
      end
    else
      fibos << 1
    end
    fibos
  end
end
