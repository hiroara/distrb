# frozen_string_literal: true

module Distrb
  class Gamma
    def initialize alpha, beta = 1
      @alpha = alpha
      @beta = beta
    end

    def sample
      marsaglia_tsang * @beta
    end

    private

    def marsaglia_tsang
      @alpha < 1 ? marsaglia_tsang_low_alpha : marsaglia_tsang_high_alpha
    end

    def marsaglia_tsang_low_alpha
      gamma = Gamma.new @alpha + 1
      uniform = Uniform.new
      x = gamma.sample
      u = uniform.sample
      x * u ** (1 / @alpha)
    end

    def marsaglia_tsang_high_alpha
      normal = Normal.new
      uniform = Uniform.new

      d = @alpha - 1.0 / 3.0
      c = 1.0 / Math.sqrt(9.0 * d)
      loop do
        v = 0.0
        while !v.positive?
          x = normal.sample
          v = 1.0 + c * x
        end
        v = v ** 3
        u = uniform.sample
        return d * v if u < 1.0 - 0.0331 * x ** 4
        return d * v if Math.log(u) < 0.5 * x ** 2 + d * (1.0 - v + Math.log(v))
      end
    end
  end
end
