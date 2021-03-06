# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'more_responsive_less_u_i/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "more_responsive_less_u_i-rails"
  spec.version       = MoreResponsiveLessUI::Rails::VERSION
  spec.authors       = ["d-theus"]
  spec.email         = ["slma0x02@gmail.com"]
  spec.summary       = %q{Simple and responsive web ui framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "less-rails" 
  spec.add_dependency "coffee-rails" 
  spec.add_dependency "autoprefixer-rails"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
