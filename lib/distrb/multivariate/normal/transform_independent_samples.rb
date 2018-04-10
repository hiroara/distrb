# frozen_string_literal: true

#
# Generating random values from multivariate normal distribution can be done
# with independent samples from normal distribution.
# In this way, a square root of the covariance matrix is required.
# We use SVD to get the matrix.
# See: https://stats.stackexchange.com/a/159322/89764
#
class Distrb::Multivariate::Normal::TransformIndependentSamples
  attr_reader :normal, :mean, :covariance

  def initialize mean, covariance = nil
    @normal = Distrb::Normal.new
    @mean = mean
    @covariance = covariance || GSL::Matrix.eye(mean.length)
  end

  def sample
    x = GSL::Vector.alloc(Array.new(self.mean.length) { self.normal.sample })
    (sqrt_covariance * x + self.mean).to_a
  end

  private

  def sqrt_covariance
    @sqrt_covariance ||=
      begin
        u, _v, s = svd_covariance
        u * s.sqrt.to_m_diagonal
      end
  end

  def svd_covariance
    @svd_covariance ||= @covariance.svd
  end
end
