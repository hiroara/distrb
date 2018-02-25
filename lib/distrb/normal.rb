# frozen_string_literal: true

class Distrb::Normal < Distrb::Distribution
  require_relative './normal/box_mullers_method'

  attr_reader :sampler

  def initialize
    @sampler = BoxMullersMethod.new
  end
end
