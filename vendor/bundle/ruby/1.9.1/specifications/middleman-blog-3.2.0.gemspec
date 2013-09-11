# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-blog"
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis"]
  s.date = "2013-03-11"
  s.description = "A blog foundation using Middleman"
  s.email = ["me@tdreyno.com", "ben@benhollis.net"]
  s.homepage = "https://github.com/middleman/middleman-blog"
  s.require_paths = ["lib"]
  s.rubyforge_project = "middleman-blog"
  s.rubygems_version = "2.0.7"
  s.summary = "A blog foundation using Middleman"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["~> 3.0"])
      s.add_runtime_dependency(%q<maruku>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<tzinfo>, ["~> 0.3.0"])
    else
      s.add_dependency(%q<middleman-core>, ["~> 3.0"])
      s.add_dependency(%q<maruku>, ["~> 0.6.0"])
      s.add_dependency(%q<tzinfo>, ["~> 0.3.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["~> 3.0"])
    s.add_dependency(%q<maruku>, ["~> 0.6.0"])
    s.add_dependency(%q<tzinfo>, ["~> 0.3.0"])
  end
end
