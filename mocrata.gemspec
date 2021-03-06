# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mocrata/version'

Gem::Specification.new do |spec|
  spec.name          = 'mocrata'
  spec.version       = Mocrata::VERSION
  spec.authors       = ['Heather Rivers']
  spec.email         = ['heather@modeanalytics.com']
  spec.description   = "Mode's SODA client"
  spec.summary       = 'Mocrata is a SODA (Socrata Open Data API) client developed by Mode Analytics'
  spec.homepage      = 'https://github.com/mode/mocrata'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'

  spec.required_ruby_version = '~> 2.0'
end
