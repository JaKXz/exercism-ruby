module RomanNumerals
  NUMERIC_TO_ROMAN = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }.freeze

  def to_roman
    return roman_numeral unless roman_numeral.nil?

    factor = quotient_factor

    if power_of_10?(factor)
      factor.to_roman + (self - factor).to_roman
    else
      remainder = self % factor
      (self - remainder).to_roman + remainder.to_roman
    end
  end

  private

  def roman_numeral
    NUMERIC_TO_ROMAN[self]
  end

  def quotient_factor
    NUMERIC_TO_ROMAN.keys.select { |val| val < self }.max
  end

  def power_of_10?(n)
    (0..3).map { |x| 10**x }.include?(n)
  end
end

class Integer
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end
