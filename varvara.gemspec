# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'varvara/version'

Gem::Specification.new do |spec|
  spec.name          = "varvara"
  spec.version       = Varvara::VERSION  
  spec.platform    = Gem::Platform::RUBY
  spec.authors       = ["ostaptan"]
  spec.email         = ["otan256@gmail.com"]
  spec.description   = %q{Displays your routes, classes, modules and thier methods & variables. Provides full stack of hierarcy, dependencies, 
                       associations and configurations of your project.}
  spec.summary       = %q{Information desk for your project}
  spec.homepage      = "http://rubygems.org/gems/varvara"
  spec.license       = "MIT"
  
  spec.rubyforge_project = "varvara"

  spec.files         = `git ls-files`.split($/).concat([
    'lib/varvara/builder.rb'
    ])
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
