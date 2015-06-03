# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_snapchat/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_snapchat"
  spec.version       = ActsAsSnapchat::VERSION
  spec.authors       = ["Gabe Scholz", "Luke Cowell", "Godfrey Chan"]
  spec.email         = ["gabe@brewhouse.io"]
  spec.summary       = %q{Makes your Active Record models behave like content on Snapchat.}
  spec.description   = %q{Makes your Active Record models behave like content on Snapchat.}
  spec.homepage      = "https://www.github.com/vanruby/acts_as_snapchat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.7"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_dependency "rails", "~> 4"
end
