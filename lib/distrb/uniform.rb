# frozen_string_literal: true

#
# Uniform distribution
# See: https://en.wikipedia.org/wiki/Uniform_distribution_(continuous)
#
class Distrb::Uniform < Distrb::Distribution
  require_relative './uniform/mersenne_twister'

  attr_reader :sampler

  def initialize
    @sampler = MersenneTwister.new
  end
end
