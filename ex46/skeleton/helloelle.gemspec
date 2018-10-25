# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "helloelle"
  spec.version       = '1.0'
  spec.authors       = ["Elle H."]
  spec.email         = ["itsellej@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "https://github.com/itsellej"
  spec.license       = "MIT"

  spec.files         = ['lib/helloelle.rb']
  spec.executables   = ['helloelle']
  spec.test_files    = ['tests/test_helloelle.rb']
  spec.require_paths = ["lib"]
end
