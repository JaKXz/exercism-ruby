module Hamming
  extend self

  def compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length

    (indexed_strand(strand_one) - indexed_strand(strand_two)).length
  end

  private

  def indexed_strand(dna_strand)
    dna_strand.each_char.with_index.map { |c, i| [c, i] }
  end
end

module BookKeeping
  VERSION = 3
end
