# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cuba_react/version'

Gem::Specification.new do |spec|
  spec.name          = "cuba-react"
  spec.version       = CubaReact::VERSION
  spec.authors       = ["Dave Bush"]
  spec.email         = ["github@david-bush.co.uk"]

  spec.summary       = %q{Integrates React with Cuba}
  spec.description   = %q{Integrates React with Cuba}
  spec.homepage      = "https://github.com/disavowd/cuba-react"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "opal", "~> 0.8.0"
  spec.add_dependency "opal-jquery", "~> 0.4.1"
  spec.add_dependency "reactive-ruby", "~> 0.7.40"
  spec.add_dependency "thor", "~> 0.19.1"
end
