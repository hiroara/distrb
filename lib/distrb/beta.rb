# frozen_string_literal: true

#
# Beta distribution
# See: https://en.wikipedia.org/wiki/Beta_distribution
#
class Distrb::Beta < Distrb::Distribution
  require_relative './beta/tgv'

  attr_reader :sampler

  def initialize alpha, beta
    @sampler = TGV.new alpha, beta
  end
end
