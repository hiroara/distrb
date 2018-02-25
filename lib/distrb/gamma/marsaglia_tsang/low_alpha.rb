# frozen_string_literal: true

class Distrb::Gamma::MarsagliaTsang::LowAlpha
  def initialize alpha
    @alpha = alpha
    @gamma = Distrb::Gamma.new @alpha + 1
    @uniform = Distrb::Uniform.new
  end

  def sample
    x = @gamma.sample
    u = @uniform.sample
    x * u**(1 / @alpha)
  end
end
