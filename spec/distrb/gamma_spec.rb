# frozen_string_literal: true

RSpec.describe Distrb::Gamma do
  let(:instance) { described_class.new }

  describe '#sampler' do
    subject { instance.sampler }
    it { is_expected.to be_a Distrb::Gamma::Marsaglia }
  end
end
