# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-deploy"
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Vaughan"]
  s.date = "2013-05-06"
  s.description = "Deploy a middleman built site over rsync, ftp, or git (e.g. gh-pages on github)."
  s.email = ["thomas.david.vaughan@gmail.com"]
  s.homepage = "http://tvaughan.github.com/middleman-deploy/"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Deploy a middleman built site over rsync, ftp, or git (e.g. gh-pages on github)."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<ptools>, [">= 0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_dependency(%q<ptools>, [">= 0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
    s.add_dependency(%q<ptools>, [">= 0"])
  end
end
