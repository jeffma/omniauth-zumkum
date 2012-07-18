# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-zumkum/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'oauth2', '~> 0.8.0'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'simplecov'

  gem.authors       = ["Jeff Ma"]
  gem.email         = ["majingfeng@zumkum.com"]
  gem.description   = %q{Zumkum OAuth2 plugin}
  gem.summary       = %q{An OAuth2 strategy for OmniAuth.}
  gem.homepage      = "https://github.com/jeffma/omniauth-zumkum.git"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-zumkum"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Zumkum::VERSION
end
