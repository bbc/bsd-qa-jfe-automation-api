# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "bsd-qa-jfe-automation-api"
  spec.version       = BsdQaJfeAutomationApi::VERSION
  spec.authors       = ["kelvininukbbc"]
  spec.email         = ["kelvin.inuk@bbc.co.uk"]

  spec.summary       = %q{Client library for JFE (web) test automation}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "site_prism", "2.9"
  spec.add_dependency "capybara", "2.15.3"
end
