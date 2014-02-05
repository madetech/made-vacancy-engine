$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vacancy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "vacancy"
  s.version     = Vacancy::VERSION
  s.authors     = ["Chris Blackburn"]
  s.email       = ["chris@madebymade.co.uk"]
  s.homepage    = "http://www.madebymade.co.uk/"
  s.summary     = "Rails ActiveAdmin backed engine to add vacancies to a website."
  s.description = "Vacancy provides a models and active admin templates to your app."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "paperclip", "~> 3.0"
  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "stringex", "~> 1.5.1"

  s.add_development_dependency "sqlite3"
end
