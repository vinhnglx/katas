class LongestCollatzSequence
  attr_reader :number, :longest_chain

  def initialize(num)
    @num = num
  end

  def run
    i = 1
    sequence = 0
    @number = 0
    @longest_chain = 0

    while i <= @num do
      length = 1
      sequence = i

      while sequence != 1 do
        sequence = sequence % 2 == 0 ? (sequence / 2) : (sequence * 3) + 1
        length = length + 1
      end

      if length > @longest_chain
        @longest_chain = length
        @number = i
      end
      i =  i + 1
    end
  end
end

