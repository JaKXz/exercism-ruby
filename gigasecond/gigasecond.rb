module Gigasecond
  extend self

  GIGASECOND = 10**9

  def from(time)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 5
end
