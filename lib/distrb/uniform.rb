# frozen_string_literal: true

class Distrb::Uniform
  def sample *args
    Random.new.rand(*args)
  end
end
