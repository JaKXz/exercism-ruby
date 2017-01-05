module Complement
  extend self

  def of_dna(dna_str)
    dna_str.chars.each.reduce("") do | str, char |
      str += from_char(char)
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
