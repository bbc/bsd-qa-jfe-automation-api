
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'bsd-qa-jfe-automation-api'
  spec.version       = BsdQaJfeAutomationApi::VERSION
  spec.authors       = ['kelvininukbbc']
  spec.email         = ['kelvin.inuk@bbc.co.uk']

  spec.summary       = 'Client library for testing JFE server endpoints.'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", '0.14.0'
  spec.add_dependency 'hashie', '3.1'
  spec.add_dependency 'pry', '0.10.4'

  spec.add_development_dependency 'bundler', '1.16.1'
  spec.add_development_dependency 'rake', '10.0'
  spec.add_development_dependency 'rspec', '3.0'
  spec.add_development_dependency 'rubocop', '0.48.1'
end
