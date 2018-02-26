# frozen_string_literal: true

#
# Marsaglia and Tsang's method to sample from Gamma distribution
# See: https://dl.acm.org/citation.cfm?id=358414
#
class Distrb::Gamma::MarsagliaTsang
  require_relative './marsaglia_tsang/high_alpha'
  require_relative './marsaglia_tsang/low_alpha'

  def initialize alpha, beta = 1
    @sampler = alpha < 1 ? LowAlpha.new(alpha) : HighAlpha.new(alpha)
    @beta = beta
  end

  def sample
    @sampler.sample * @beta
  end
end
