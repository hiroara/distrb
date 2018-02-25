# frozen_string_literal: true

class Distrb::Distribution
  def sampler
    raise NotImplementedError
  end

  def sample
    self.sampler.sample
  end
end
