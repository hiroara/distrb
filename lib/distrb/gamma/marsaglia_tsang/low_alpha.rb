# frozen_string_literal: true

#
# Internal class for Marsaglia and Tsang's method.
#
# The method cannot be applied for `alpha < 1` without do anything.
# (Where `alpha` is shape parameter of Gamma distribution.)
# So this class achieves it with sampling from other Gamma distribution
# with `alpha` plus 1 and modifying it.
#
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
