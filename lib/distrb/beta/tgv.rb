# frozen_string_literal: true

class Distrb::Beta::TGV
  def initialize alpha, beta
    @gamma_alpha = Distrb::Gamma.new alpha, 1
    @gamma_beta = Distrb::Gamma.new beta, 1
  end

  def sample
    r1 = @gamma_alpha.sample
    r2 = @gamma_beta.sample
    r1 / (r1 + r2)
  end
end
