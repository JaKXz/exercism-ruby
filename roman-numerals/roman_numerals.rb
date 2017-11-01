class Integer
  def to_roman
    return mappings[self] unless mappings[self].nil?

    factor = key_from_mappings
    if powers_of_10.include?(factor)
      factor.to_roman + (self - factor).to_roman
    else
      rem = self % factor
      (self - rem).to_roman + rem.to_roman
    end
  end

  private

  def powers_of_10
    (0..5).map { |x| 10**x }.lazy
  end

  def key_from_mappings
    mappings.keys.select { |val| val < self }.max
  end

  def mappings
    {
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
    }
  end
end

module BookKeeping
  VERSION = 2
end
