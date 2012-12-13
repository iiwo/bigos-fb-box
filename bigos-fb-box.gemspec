$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bigos-fb-box/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bigos-fb-box"
  s.version     = BigosFbBox::VERSION
  s.authors     = ["Iwo Dziechciarow"]
  s.email       = ["iiwo@o2.pl"]
  s.homepage    = "http://tremor.pl"
  s.summary     = "Facebook box for bigos cms system"
  s.description = "Facebook box module"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "bigos"
  s.add_dependency "koala"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
