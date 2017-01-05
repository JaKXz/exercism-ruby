module Hamming
  extend self

  def compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length

    strand_one.chars.each_with_index.reduce(0) do |distance, (char, i)|
      distance += 1 unless char == strand_two[i]
      distance
    end
  end
end

module BookKeeping
  VERSION = 3
end
