# frozen_string_literal: true

#
# Sampling from Beta distribution using two Gamma ditributions
# Porting from Numpy
# See: https://github.com/numpy/numpy/blob/69fb4f160518ac347efc63dc17ebdf81285c1958/numpy/random/mtrand/distributions.c#L219-L224
#
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
