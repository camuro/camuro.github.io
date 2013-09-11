# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-rouge"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Linus Pettersson"]
  s.date = "2013-03-11"
  s.description = "Rouge syntax highlighting for Middleman"
  s.email = ["linus.pettersson@gmail.com"]
  s.homepage = "http://rubygems.org/gems/middleman-rouge"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Rouge syntax highlighting for Middleman"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<redcarpet>, [">= 2.2.0"])
      s.add_runtime_dependency(%q<rouge>, [">= 0.3.0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_dependency(%q<redcarpet>, [">= 2.2.0"])
      s.add_dependency(%q<rouge>, [">= 0.3.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
    s.add_dependency(%q<redcarpet>, [">= 2.2.0"])
    s.add_dependency(%q<rouge>, [">= 0.3.0"])
  end
end
