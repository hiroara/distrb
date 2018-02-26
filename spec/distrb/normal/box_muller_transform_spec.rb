# frozen_string_literal: true

RSpec.describe Distrb::Normal::BoxMullerTransform do
  let(:instance) { described_class.new }

  describe '#sample' do
    it_behaves_like 'sampler', 0.0, 1.0 do
      let(:sample_proc) { proc { instance.sample } }
      let(:n) { 10_000 }
    end
  end
end
