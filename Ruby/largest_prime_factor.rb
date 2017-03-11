class Prime
  def self.prime?(number)
    flag = true
    (2..Math.sqrt(number)).each do |n|
      if number % n == 0
        flag = false
        break
      end
    end
    flag
  end
end

class Number
  def self.devisor_numbers(number)
    devisors_prime = []
    (2...number).each do |n|
      if number % n == 0 && Prime.prime?(n)
        devisors_prime << n
      end
    end
    devisors_prime
  end

  def self.largest_primes(number)
    devisor_numbers(number).max
  end
end
