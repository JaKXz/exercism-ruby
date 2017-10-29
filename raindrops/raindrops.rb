module Raindrops
  extend self

  # @return String
  def convert(num)
    factors_tuples.inject(num.to_s) do |result, (factor, response)|
      if (num % factor).zero?
        if result == num.to_s
          result = response
        else
          result += response
        end
      end
      result
    end
  end

  private

  def factors_tuples
    [
      [3, 'Pling'],
      [5, 'Plang'],
      [7, 'Plong']
    ]
  end
end

module BookKeeping
  VERSION = 3
end
