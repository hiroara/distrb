# frozen_string_literal: true

RSpec.describe Distrb::Gamma do
  let(:instance) { described_class.new 10 }

  describe '#sampler' do
    subject { instance.sampler }
    it { is_expected.to be_a Distrb::Gamma::MarsagliaTsang }
  end
end
