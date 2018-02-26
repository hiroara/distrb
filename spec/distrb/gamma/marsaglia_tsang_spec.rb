# frozen_string_literal: true

RSpec.describe Distrb::Gamma::MarsagliaTsang do
  describe '#sample' do
    shape = 10.0
    rate = 3.0
    mean = shape / rate
    var = shape / rate**2

    let(:instance) { described_class.new shape, rate }

    it_behaves_like 'sampler', mean, var do
      let(:sample_proc) { proc { instance.sample } }
      let(:n) { 10_000 }
    end
  end
end
