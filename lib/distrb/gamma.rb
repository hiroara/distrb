# frozen_string_literal: true

class Distrb::Gamma < Distrb::Distribution
  require_relative './gamma/marsaglia_tsang'

  attr_reader :sampler

  def initialize alpha, beta = 1
    @sampler = MarsagliaTsang.new alpha, beta
  end
end
