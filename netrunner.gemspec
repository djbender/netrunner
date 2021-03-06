# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netrunner/version'

Gem::Specification.new do |spec|
  spec.name          = 'netrunner'
  spec.version       = Netrunner::VERSION
  spec.authors       = ['Derek Bender']
  spec.email         = ["'nofeardjb@gmail.com'"]
  spec.summary       = 'a library that models the game Android: Netrunner™'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel'
  spec.add_dependency 'thor'
  spec.add_dependency 'algorithms'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
