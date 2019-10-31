# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex46"
  spec.version       = '1.0'
  spec.authors       = ["Ivan"]
  spec.email         = ["mypofta@mail.ru"]
  spec.summary       = %q{Exercise_46}
  spec.description   = %q{This my project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex46.rb']
  spec.executables   = ['bin/ex46']
  spec.test_files    = ['tests/test_ex46.rb']
  spec.require_paths = ["lib"]
end
