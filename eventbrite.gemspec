# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'eventbrite/version'

Gem::Specification.new do |spec|
  spec.name        = 'eventbrite'
  spec.version     = Eventbrite::Version
  spec.authors     = ['Steven Chau']
  spec.email       = ['steven@up.co']
  spec.homepage    = 'http://github.com/startupweekend/eventbrite'
  spec.summary     = %q{A Ruby wrapper for the Eventbrite REST API}
  spec.description = %q{A Ruby wrapper for the Eventbrite REST API}

  # Gems
  spec.add_dependency 'simple_oauth', '~> 0.2.0'
  spec.add_dependency 'addressable', '~> 2.3'
  spec.add_dependency 'faraday', '~> 0.9.0'
  spec.add_dependency 'http', '~> 0.6.0'
  spec.add_dependency 'http_parser.rb', '~> 0.6.0'
  spec.add_dependency 'json', '>= 1.7.7'
  spec.add_dependency 'memoizable', '~> 0.4.0'
  spec.add_dependency 'naught', '~> 1.0'
  spec.add_dependency 'equalizer', '~> 0.0.9'
  spec.add_dependency 'money', '> 1.0'
  spec.add_dependency 'safe_yaml', '~> 1.0.4'
  spec.add_dependency 'crack', '~> 0.4.3'
  spec.add_development_dependency 'bundler', '~> 1.0'


  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']
end