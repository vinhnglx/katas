class LargestPalindrome
  def self.show(number)
    if number == 2
      max_palindrome(99, 10)
    elsif number == 3
      max_palindrome(999, 100)
    end
  end

  def self.max_palindrome(a, b)
    palindromes = []
    i = a
    begin
      j = a
      begin
        num = (i * j).to_s
        palindromes << {num: num.to_i, i: i, j: j} if num.reverse == num
        j = j - 1
      end while j >= b
      i = i - 1
    end while i >= b
    palindromes.max_by { |x| x[:num] }[:num]
  end
end
