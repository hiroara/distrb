# frozen_string_literal: true

#
# Box-Muller transform to sample from Normal distribution
# See: https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform
#
class Distrb::Normal::BoxMullerTransform
  def initialize
    @uniform = Distrb::Uniform.new
  end

  def sample
    x = @uniform.sample
    y = @uniform.sample
    Math.sqrt(-2 * Math.log(x)) * Math.cos(2 * Math::PI * y)
  end
end
