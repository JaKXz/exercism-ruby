class Sieve
  def initialize(limit)
    @limit = limit
  end

  attr_reader :limit

  def primes
    (2..limit).to_a.select(&method(:prime?))
  end

  private

  def prime?(n)
    (2..n).all? do |m|
      if m != n
        !(n % m).zero?
      else
        true
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
