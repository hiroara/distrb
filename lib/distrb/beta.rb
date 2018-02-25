# frozen_string_literal: true

module Distrb
  class Beta
    def initialize alpha, beta
      @alpha = alpha
      @beta = beta
    end

    def sample
      tgv
    end

    private

    def tgv
      r1 = Gamma.new(@alpha, 1).sample
      r2 = Gamma.new(@beta, 1).sample
      r1 / (r1 + r2)
    end
  end
end
