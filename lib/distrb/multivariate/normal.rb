# frozen_string_literal: true

require 'gsl'

#
# Normal distribution
# See: https://en.wikipedia.org/wiki/Multivariate_normal_distribution
#
class Distrb::Multivariate::Normal < Distrb::Multivariate::Distribution
  require_relative './normal/transform_independent_samples'

  attr_reader :sampler

  def initialize mean, covariance = nil
    @sampler = TransformIndependentSamples.new mean, covariance
  end
end
