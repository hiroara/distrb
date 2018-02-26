# frozen_string_literal: true

#
# Base class of probability distribution
# Currently, this class only supports sampling feature.
#
class Distrb::Distribution
  def sampler
    raise NotImplementedError
  end

  def sample
    self.sampler.sample
  end
end
