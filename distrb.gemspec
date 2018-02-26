# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'distrb/version'

Gem::Specification.new do |spec|
  spec.name          = 'distrb'
  spec.version       = Distrb::VERSION
  spec.authors       = ['Hiroki Arai']
  spec.email         = ['hiroara62@gmail.com']

  spec.summary       = 'Statistics Distribution for Ruby'
  spec.description   = 'This library implements statistics distributions.'
  spec.homepage      = 'https://github.com/hiroara/distrb'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.52.0'
end
