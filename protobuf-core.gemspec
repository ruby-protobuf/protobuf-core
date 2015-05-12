# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'protobuf/core/version'

Gem::Specification.new do |spec|
  spec.name          = "protobuf-core"
  spec.version       = Protobuf::Core::VERSION
  spec.authors       = ["BJ Neilsen", "Brandon Dewitt", "Devin Christensen", "Adam Hutchison", "Michael Ries"]
  spec.email         = ["bj.neilsen+protobuf@gmail.com", "brandonsdewitt+protobuf@gmail.com", "quixoten@gmail.com", "liveh2o@gmail.com", "michael@riesd.com"]

  spec.summary       = "Google Protocol Buffers serialization and compiler implementation for Ruby."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ruby-protobuf/protobuf-core"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 3.2"
  spec.add_development_dependency 'ruby-prof' if RUBY_ENGINE.to_sym == :ruby
  spec.add_development_dependency "timecop"
end
