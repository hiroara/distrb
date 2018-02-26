# frozen_string_literal: true

RSpec.describe Distrb::Beta::TGV do
  describe '#sample' do
    alpha = 10.0
    beta = 3.0
    mean = alpha / (alpha + beta)
    var = alpha * beta / (alpha + beta)**2 / (alpha + beta + 1)

    let(:instance) { described_class.new alpha, beta }

    it_behaves_like 'sampler', mean, var do
      let(:sample_proc) { proc { instance.sample } }
      let(:n) { 10_000 }
    end
  end
end
