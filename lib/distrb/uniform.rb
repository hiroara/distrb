# frozen_string_literal: true

module Distrb
  class Uniform
    def sample *args
      Random.new.rand(*args)
    end
  end
end
