# frozen_string_literal: true

RSpec.describe Distrb::Beta do
  let(:instance) { described_class.new 5, 3 }

  describe '#sampler' do
    subject { instance.sampler }
    it { is_expected.to be_a Distrb::Beta::TGV }
  end
end
