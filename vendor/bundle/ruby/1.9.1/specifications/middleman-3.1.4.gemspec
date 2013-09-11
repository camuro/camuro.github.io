# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman"
  s.version = "3.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis"]
  s.date = "2013-07-22"
  s.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."
  s.email = ["me@tdreyno.com", "ben@benhollis.net"]
  s.homepage = "http://middlemanapp.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Hand-crafted frontend development"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["= 3.1.4"])
      s.add_runtime_dependency(%q<middleman-more>, ["= 3.1.4"])
      s.add_runtime_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
      s.add_runtime_dependency(%q<haml>, [">= 3.1.6"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.20"])
      s.add_runtime_dependency(%q<compass>, [">= 0.12.2"])
      s.add_runtime_dependency(%q<uglifier>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<coffee-script>, ["~> 2.2.0"])
      s.add_runtime_dependency(%q<execjs>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<kramdown>, ["~> 1.1.0"])
    else
      s.add_dependency(%q<middleman-core>, ["= 3.1.4"])
      s.add_dependency(%q<middleman-more>, ["= 3.1.4"])
      s.add_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
      s.add_dependency(%q<haml>, [">= 3.1.6"])
      s.add_dependency(%q<sass>, [">= 3.1.20"])
      s.add_dependency(%q<compass>, [">= 0.12.2"])
      s.add_dependency(%q<uglifier>, ["~> 2.1.0"])
      s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
      s.add_dependency(%q<execjs>, ["~> 1.4.0"])
      s.add_dependency(%q<kramdown>, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["= 3.1.4"])
    s.add_dependency(%q<middleman-more>, ["= 3.1.4"])
    s.add_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
    s.add_dependency(%q<haml>, [">= 3.1.6"])
    s.add_dependency(%q<sass>, [">= 3.1.20"])
    s.add_dependency(%q<compass>, [">= 0.12.2"])
    s.add_dependency(%q<uglifier>, ["~> 2.1.0"])
    s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
    s.add_dependency(%q<execjs>, ["~> 1.4.0"])
    s.add_dependency(%q<kramdown>, ["~> 1.1.0"])
  end
end
