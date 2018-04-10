# frozen_string_literal: true

RSpec.describe Distrb::Multivariate::Normal::TransformIndependentSamples do
  let(:instance) { described_class.new target_mean, target_covariance }
  let(:target_mean) { GSL::Vector.alloc [0.1, 0.2, 0.3] }
  let(:target_covariance) do
    GSL::Matrix.alloc(
      [
        0.5, 0.1, 0.2,
        0.1, 0.6, 0.3,
        0.2, 0.3, 0.7
      ],
      3, 3
    )
  end

  describe '#sample' do
    let(:n) { 10_000 }
    let(:x) { Array.new(n) { instance.sample } }
    let(:mean) do
      total = x.inject([0.0] * 3) do |sum, x_t|
        sum.zip(x_t).map { |a, b| a + b }
      end
      total.map { |sum| sum / n }
    end
    let(:covariance) do
      d = Array.new(3) { Array.new(3) { 0.0 } }
      x.each do |x_t|
        3.times do |i|
          3.times do |j|
            d[i][j] += (x_t[i] - mean[i]) * (x_t[j] - mean[j])
          end
        end
      end
      d.map { |d_i| d_i.map { |d_i_j| d_i_j / (n - 1) } }
    end

    it do
      mean.zip(target_mean) do |actual, expected|
        expect(actual).to be_within(0.1).of(expected)
      end
      covariance.zip(target_covariance.to_a) do |covariance_i, t_covariance_i|
        covariance_i.zip(t_covariance_i) do |actual, expected|
          expect(actual).to be_within(0.1).of(expected)
        end
      end
    end
  end
end
