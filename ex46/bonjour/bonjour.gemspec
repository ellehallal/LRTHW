# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "bonjour"
  spec.version       = '1.0'
  spec.authors       = ["Elle H"]
  spec.email         = ["itsellej@gmail.com"]
  spec.summary       = %q{Bonjour}
  spec.description   = %q{A simple hello gem}
  spec.homepage      = "https://github.com/itsellej/LRTHW"
  spec.license       = "MIT"

  spec.files         = ['lib/bonjour.rb']
  spec.executables   = ['bin/bonjour']
  spec.test_files    = ['tests/test_bonjour.rb']
  spec.require_paths = ["lib"]
end
