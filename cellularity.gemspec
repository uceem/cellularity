# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cellularity/version'

Gem::Specification.new do |spec|
  spec.name          = "cellularity"
  spec.version       = Cellularity::VERSION
  spec.authors       = ["johnotander"]
  spec.email         = ["johnotander@gmail.com"]
  spec.description   = %q{Determine whether a string is an ICCID, IMEI, ESN, or MDN.}
  spec.summary       = %q{Determine whether a string is an ICCID, IMEI, ESN, or MDN.}
  spec.homepage      = "https://www.github.com/johnotander/cellularity"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
