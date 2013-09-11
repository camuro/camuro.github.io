# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "favicon_maker"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andreas Follmann"]
  s.date = "2013-08-06"
  s.description = "Create favicon files in various sizes from a base image"
  s.homepage = "https://github.com/follmann/favicon_maker"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Create favicon files in various sizes from a base image"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mini_magick>, ["~> 3.5"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
    else
      s.add_dependency(%q<mini_magick>, ["~> 3.5"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    end
  else
    s.add_dependency(%q<mini_magick>, ["~> 3.5"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
  end
end
