class Squares
  def initialize(num)
    @num = num
  end

  attr_reader :num

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    (1..num).reduce(:+)**2
  end

  def sum_of_squares
    (1..num).map { |n| n**2 }.reduce(:+)
  end
end

module BookKeeping
  VERSION = 4
end
