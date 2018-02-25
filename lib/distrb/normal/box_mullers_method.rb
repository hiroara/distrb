# frozen_string_literal: true

class Distrb::Normal::BoxMullersMethod
  def initialize
    @uniform = Distrb::Uniform.new
  end

  def sample
    x = @uniform.sample
    y = @uniform.sample
    Math.sqrt(-2 * Math.log(x)) * Math.cos(2 * Math::PI * y)
  end
end
