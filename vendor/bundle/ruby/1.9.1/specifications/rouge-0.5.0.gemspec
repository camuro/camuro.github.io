# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rouge"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jay Adkisson"]
  s.date = "2013-09-03"
  s.description = "Rouge aims to a be a simple, easy-to-extend drop-in replacement for pygments."
  s.email = ["jjmadkisson@gmail.com"]
  s.executables = ["rougify"]
  s.files = ["bin/rougify"]
  s.homepage = "http://github.com/jayferd/rouge"
  s.licenses = ["MIT (see LICENSE file)"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "rouge"
  s.rubygems_version = "2.0.7"
  s.summary = "A pure-ruby colorizer based on pygments"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
  end
end
