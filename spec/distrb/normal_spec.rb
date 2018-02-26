# frozen_string_literal: true

RSpec.describe Distrb::Normal do
  let(:instance) { described_class.new }

  describe '#sampler' do
    subject { instance.sampler }
    it { is_expected.to be_a Distrb::Normal::BoxMullerTransform }
  end
end
