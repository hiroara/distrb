# frozen_string_literal: true

#
# Marsaglia and Tsang's method to sample from Gamma distribution
# See: https://dl.acm.org/citation.cfm?id=358414
#
class Distrb::Gamma::MarsagliaTsang
  require_relative './marsaglia_tsang/high_alpha'
  require_relative './marsaglia_tsang/low_alpha'

  def initialize shape, rate = 1
    @sampler = shape < 1 ? LowAlpha.new(shape) : HighAlpha.new(shape)
    @rate = rate
  end

  def sample
    @sampler.sample / @rate
  end
end
