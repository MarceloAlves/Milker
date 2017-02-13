# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'milker/version'

Gem::Specification.new do |spec|
  spec.name          = "milker"
  spec.version       = Milker::VERSION
  spec.authors       = ["Marcelo Alves"]
  spec.email         = ["selfmadecelo@gmail.com"]

  spec.summary       = %q{Interface for creamery API's}
  spec.description   = %q{Interface for creamery API's}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock", '~> 0'
  spec.add_development_dependency "pry"

  spec.add_dependency "httparty", '~> 0.13.7'
  spec.add_dependency "json"
end
