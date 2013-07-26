# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbenv/which/version'

Gem::Specification.new do |spec|
  spec.name          = "rbenv-which"
  spec.version       = Rbenv::Which::VERSION
  spec.authors       = ["Kazuhiro Yamada"]
  spec.email         = ["yamadakazu45@gmail.com"]
  spec.summary       = "rbenv helper script to switch the version of ruby at runtime."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/k-yamada/rbenv-which.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
