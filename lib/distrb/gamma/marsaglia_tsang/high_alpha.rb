# frozen_string_literal: true

#
# Internal class for Marsaglia and Tsang's method.
#
# Actual implementation of the algorithm for `alpha < 1`.
#
class Distrb::Gamma::MarsagliaTsang::HighAlpha
  def initialize alpha
    @alpha = alpha
    @normal = Distrb::Normal.new
    @uniform = Distrb::Uniform.new

    @d = @alpha - 1.0 / 3.0
    @c = 1.0 / Math.sqrt(9.0 * @d)
  end

  def sample
    loop do
      v = 0.0
      until v.positive?
        x = @normal.sample
        v = 1.0 + @c * x
      end
      v **= 3
      u = @uniform.sample
      return @d * v if should_stop? u, x, v
    end
  end

  private

  def should_stop? u, x, v
    u < 1.0 - 0.0331 * x**4 ||
      Math.log(u) < 0.5 * x**2 + @d * (1.0 - v + Math.log(v))
  end
end
