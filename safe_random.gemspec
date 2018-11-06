lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safe_random/version'

Gem::Specification.new do |spec|
  spec.name          = 'safe_random'
  spec.version       = '0.0.5'
  spec.authors       = ['Rahul Patil']
  spec.email         = ['rahupatil_scs@yahoo.co.in']
  spec.summary       = 'Safe Random'
  spec.description   = 'SafeRandom gem will help to generate random string, paragraphs, strong string, number and alphanumeric very easily.'
  spec.homepage      = 'https://github.com/rpatil/safe_random'
  spec.license       = 'MIT'
  spec.date          = '2018-11-06'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files = Dir['README.md', 'Gemfile', 'Rakefile', 'spec/*', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 0'
end
