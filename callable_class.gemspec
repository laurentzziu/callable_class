
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'callable_class/version'

Gem::Specification.new do |spec|
  spec.name          = 'callable_class'
  spec.version       = CallableClass::VERSION
  spec.authors       = ['Florinel Gorgan']
  spec.email         = ['florin@floringorgan.com']

  spec.summary       = %q(Class method to instantiate and call a class.)
  spec.description   = %q(Class method to instantiate and call a class.)
  spec.homepage      = 'https://github.com/laurentzziu/callable_class'
  spec.license       = 'MIT'


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov-console'
  spec.add_development_dependency 'simplecov'
end
