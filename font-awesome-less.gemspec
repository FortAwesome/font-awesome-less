# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'font_awesome/less/version'

Gem::Specification.new do |spec|
  spec.name          = 'font-awesome-less'
  spec.version       = FontAwesome::Less::VERSION
  spec.authors       = ['Travis Chase']
  spec.email         = ['travis@travischase.me']
  spec.description   = 'Font-Awesome LESS gem for use in Ruby projects'
  spec.summary       = 'Font-Awesome LESS'
  spec.homepage      = 'https://github.com/FortAwesome/font-awesome-less'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'less-rails'

  spec.add_runtime_dependency 'less', '>= 2.4.0'
end
