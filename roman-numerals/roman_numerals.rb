class Integer
  def to_roman
    return roman_numeral unless roman_numeral.nil?

    factor = quotient_factor

    if powers_of_10.include?(factor)
      factor.to_roman + (self - factor).to_roman
    else
      remainder = self % factor
      (self - remainder).to_roman + remainder.to_roman
    end
  end

  private

  def roman_numeral
    RomanNumerals::MAPPINGS[self]
  end

  def quotient_factor
    RomanNumerals::MAPPINGS.keys.select { |val| val < self }.max
  end

  def powers_of_10
    (0..5).map { |x| 10**x }.lazy
  end
end

module RomanNumerals
  MAPPINGS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8 => 'VIII',
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
end

module BookKeeping
  VERSION = 2
end
