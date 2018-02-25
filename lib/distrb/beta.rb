# frozen_string_literal: true

class Distrb::Beta < Distrb::Distribution
  require_relative './beta/tgv'

  attr_reader :sampler

  def initialize alpha, beta
    @sampler = TGV.new alpha, beta
  end
end
