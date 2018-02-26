# frozen_string_literal: true

#
# Normal distribution
# See: https://en.wikipedia.org/wiki/Normal_distribution
#
class Distrb::Normal < Distrb::Distribution
  require_relative './normal/box_muller_transform'

  attr_reader :sampler

  def initialize
    @sampler = BoxMullerTransform.new
  end
end
