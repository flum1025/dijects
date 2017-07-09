# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dijects/version"

Gem::Specification.new do |spec|
  spec.name          = "dijects"
  spec.version       = Dijects::VERSION
  spec.authors       = ["flum1025"]
  spec.email         = ["flum.1025@gmail.com"]

  spec.summary       = "dijects"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/flum1025/dijects"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
