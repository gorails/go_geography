$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "go_geography/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "go_geography"
  s.version     = GoGeography::VERSION
  s.authors     = ["jcottobboni"]
  s.email       = ["jcottobboni@gmail.com"]
  s.homepage    = "http://www.google.com"
  s.summary     = "Engine for city and states"
  s.description = "This is an engine who provide a crud for states and city"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
