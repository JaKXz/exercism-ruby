module Pangram
  extend self

  def pangram?(phrase)
    (phrase.downcase.split('') & alphabet).length == alphabet.length
  end

  private

  def alphabet
    %w[
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
    ]
  end
end

module BookKeeping
  VERSION = 5
end
