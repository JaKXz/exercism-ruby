module Complement
  extend self

  def of_dna(dna_str)
    dna_str.chars.map(&method(:transcription)).join
  rescue
    ''
  end

  private

  def transcription(dna_char)
    {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }.fetch(dna_char)
  end
end

module BookKeeping
  VERSION = 4
end
