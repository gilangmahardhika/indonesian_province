# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indonesian_province/version'

Gem::Specification.new do |spec|
  spec.name          = "indonesian_province"
  spec.version       = IndonesianProvince::VERSION
  spec.authors       = ["Gilang Mahardhika"]
  spec.email         = ["gilangmahardhika@gmail.com"]
  spec.description   = %q{List Indonesian Province and cities}
  spec.summary       = %q{List all provinces in Indonesia}
  spec.homepage      = "https://github.com/gilangmahardhika/indonesian_province"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
