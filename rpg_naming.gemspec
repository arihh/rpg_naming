# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpg_naming/version'

Gem::Specification.new do |spec|
  spec.name          = "rpg_naming"
  spec.version       = RpgNaming::VERSION
  spec.authors       = ["arihh"]
  spec.email         = ["arihh0615@gmail.com"]

  spec.summary       = "game name random choice"
  spec.description   = ""
  spec.homepage      = "https://github.com/arihh/rpg_naming"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
