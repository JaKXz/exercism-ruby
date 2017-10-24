module Pangram
  extend self

  def pangram?(phrase)
    (phrase.downcase.split('') & alphabet).length == alphabet.length
  end

  private

  def alphabet
    ('a'..'z').to_a
  end
end

module BookKeeping
  VERSION = 5
end
