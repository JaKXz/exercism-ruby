module Complement
  extend self

  def of_dna(dna_str)
    begin
      dna_str.chars.map(&method(:from_char)).join
    rescue KeyError
      ""
    end
  end

  private

  def from_char(dna_char)
    {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }.fetch(dna_char)
  end
end

module BookKeeping
  VERSION = 4
end
