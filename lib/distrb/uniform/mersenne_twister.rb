# frozen_string_literal: true

#
# Mersenne Twister algorithm to sample from Uniform distribution
# See: https://en.wikipedia.org/wiki/Mersenne_Twister
#
# This implementation uses Random class of Ruby core.
# See: http://ruby-doc.org/core-2.5.0/Random.html
#
class Distrb::Uniform::MersenneTwister
  def initialize
    @random = Random.new
  end

  def sample *args
    @random.rand(*args)
  end
end
