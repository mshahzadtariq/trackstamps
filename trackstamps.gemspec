$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trackstamps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trackstamps"
  s.version     = Trackstamps::VERSION
  s.authors     = ["M Shahzad Tariq"]
  s.email       = ["m.shahzad.tariq@hotmail.com"]
  s.homepage    = "http://github.com/mshahzadtariq/trackstamps"
  s.summary     = "Track user activities in rails"
  s.description = "Track user activities in rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", '~> 6'
  s.add_dependency "devise", '> 4.2.0'

  s.add_development_dependency "sqlite3"
end
