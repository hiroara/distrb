# frozen_string_literal: true

class Distrb::Normal
  def sample
    box_mullers_method
  end

  private

  def box_mullers_method
    uniform = Uniform.new
    x = uniform.sample
    y = uniform.sample
    Math.sqrt(-2 * Math.log(x)) * Math.cos(2 * Math::PI * y)
  end
end
