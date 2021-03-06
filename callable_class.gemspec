# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'callable_class/version'

Gem::Specification.new do |spec|
  spec.name          = 'callable_class'
  spec.version       = CallableClass::VERSION
  spec.authors       = ['Florinel Gorgan']
  spec.email         = ['florin@floringorgan.com']

  spec.summary       = 'Class method to instantiate and call a class.'
  spec.description   = 'Class method to instantiate and call a class.'
  spec.homepage      = 'https://github.com/laurentzziu/callable_class'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-console'
end
