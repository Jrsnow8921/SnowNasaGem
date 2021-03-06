# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SnowNasa/version'

Gem::Specification.new do |spec|
  spec.name          = "SnowNasa"
  spec.version       = SnowNasa::VERSION
  spec.authors       = ["Justin Snow"]
  spec.email         = ["jrsnow8921@gmail.com"]

  spec.summary       = %q{A gem to interact with Nasa's api}
  spec.description   = %q{A gem to interact with Nasa's api to retrieve the following-- "The Astronomy Picture of the Day", "Earth Images", "Mars Rover Pics ^_^", and "Near Earth Objects(Asteroids) }
  spec.homepage      = "https://github.com/Jrsnow8921/SnowNasaGem"
  spec.license       = "MIT"

  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rest-client", ">= 1.8.0"
  spec.add_development_dependency "em-resolv-replace", ">= 1.1.3"
  spec.add_development_dependency "eventmachine", ">= 1.0.7"
  spec.add_development_dependency "colorize", ">= 0.7.7"
end
