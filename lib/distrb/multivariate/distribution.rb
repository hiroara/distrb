# frozen_string_literal: true

#
# Base class of multivariate probability distribution
# Currently, this class only supports sampling feature.
#
class Distrb::Multivariate::Distribution
  def sampler
    raise NotImplementedError
  end

  def sample
    self.sampler.sample
  end
end
