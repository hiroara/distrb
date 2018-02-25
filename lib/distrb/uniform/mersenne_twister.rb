# frozen_string_literal: true

class Distrb::Uniform::MersenneTwister
  def initialize
    @random = Random.new
  end

  def sample *args
    @random.rand(*args)
  end
end
