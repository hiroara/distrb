# frozen_string_literal: true

RSpec.shared_examples_for 'sampler' do |expected_mean, expected_var|
  let(:n) { 10_000 }
  let(:x) { Array.new(n, &sample_proc) }

  let(:mean) { x.inject(0.0, &:+) / n }
  let(:var) { x.map { |x_i| (x_i - mean)**2 }.inject(0.0, &:+) / n }

  it "should samples with mean: #{expected_mean} and var: #{expected_var}" do
    expect(mean).to be_within(0.1).of(expected_mean)
    expect(var).to be_within(0.1).of(expected_var)
  end
end
