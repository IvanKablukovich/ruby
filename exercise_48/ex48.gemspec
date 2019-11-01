coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
 spec.name          = "ex48"
 spec.version       = '1.0'
 spec.authors       = ["ivan"]
 spec.email         = ["email"]
 spec.summary       = %q{Short summary of your project}
 spec.description   = %q{Longer description of your project.}
 spec.homepage      = "http://domainforproject.com/"
 spec.license       = "MIT"

 spec.files         = ['lib/ex48/lexicon.rb']
 spec.executables   = ['bin/ex48']
 spec.test_files    = ['tests/test_lexicon.rb']
 spec.require_paths = ["lib"]
end
