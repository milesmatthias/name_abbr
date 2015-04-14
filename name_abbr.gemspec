# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'name_abbr/version'

Gem::Specification.new do |spec|
  spec.name          = "name_abbr"
  spec.version       = NameAbbr::VERSION
  spec.authors       = ["Miles Matthias"]
  spec.email         = ["miles.matthias@gmail.com"]
  spec.summary       = %q{Full Name Abbreviator}
  spec.description   = %q{Abbreviate full names like John D.}
  spec.homepage      = "https://github.com/milesmatthias/name_abbr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.9.0"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"

end
