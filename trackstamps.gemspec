$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trackstamps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trackstamps"
  s.version     = Trackstamps::VERSION
  s.authors     = ["M Shahzad Tariq"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Trackstamps."
  s.description = "TODO: Description of Trackstamps."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end
