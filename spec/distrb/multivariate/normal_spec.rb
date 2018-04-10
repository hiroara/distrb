# frozen_string_literal: true

RSpec.describe Distrb::Multivariate::Normal do
  let(:instance) { described_class.new mean, covariance }
  let(:mean) { GSL::Vector.alloc [0.1, 0.2, 0.3] }
  let(:covariance) do
    GSL::Matrix.alloc(
      [
        0.1, 0.4, 0.6,
        0.4, 0.2, 0.5,
        0.6, 0.5, 0.3
      ],
      3, 3
    )
  end

  describe '#sampler' do
    subject { instance.sampler }
    it do
      is_expected.to be_a(
        Distrb::Multivariate::Normal::TransformIndependentSamples
      )
    end
  end
end
