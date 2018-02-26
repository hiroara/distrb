# frozen_string_literal: true

RSpec.describe Distrb::Uniform do
  let(:instance) { described_class.new }

  describe '#sampler' do
    subject { instance.sampler }
    it { is_expected.to be_a Distrb::Uniform::MersenneTwister }
  end
end
