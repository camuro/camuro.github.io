# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ptools"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger"]
  s.date = "2012-04-06"
  s.description = "    The ptools (power tools) library provides several handy methods to\n    Ruby's core File class, such as File.which for finding executables,\n    File.null to return the null device on your platform, and so on.\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["README", "CHANGES", "MANIFEST"]
  s.files = ["README", "CHANGES", "MANIFEST"]
  s.homepage = "http://www.rubyforge.org/projects/shards"
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "shards"
  s.rubygems_version = "2.0.7"
  s.summary = "Extra methods for the File class"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>, [">= 2.4.0"])
    else
      s.add_dependency(%q<test-unit>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<test-unit>, [">= 2.4.0"])
  end
end
