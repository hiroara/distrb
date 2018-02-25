# frozen_string_literal: true

class Distrb::Uniform < Distrb::Distribution
  require_relative './uniform/mersenne_twister'

  attr_reader :sampler

  def initialize
    @sampler = MersenneTwister.new
  end
end
