# frozen_string_literal: true

RSpec.describe Distrb::Uniform::MersenneTwister do
  let(:instance) { described_class.new }

  describe '#sample' do
    range = 0.0...3.0
    mean = (range.end - range.begin) / 2
    var = (range.end - range.begin)**2 / 12

    it_behaves_like 'sampler', mean, var do
      let(:sample_proc) { proc { instance.sample range } }
      let(:n) { 10_000 }
    end
  end
end
