# frozen_string_literal: true

#
# Normal distribution
# See: https://en.wikipedia.org/wiki/Normal_distribution
#
class Distrb::Normal < Distrb::Distribution
  require_relative './normal/box_muller_transform'

  attr_reader :sampler, :mean, :stdev

  def initialize mean = 0.0, stdev = 1.0
    @sampler = BoxMullerTransform.new
    @mean = mean
    @stdev = stdev
  end

  def sample
    super * self.stdev + self.mean
  end
end
