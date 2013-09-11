# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-livereload"
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds"]
  s.date = "2013-05-03"
  s.description = "Adds LiveReload to Middleman"
  s.email = ["me@tdreyno.com"]
  s.homepage = "https://github.com/middleman/middleman-livereload"
  s.require_paths = ["lib"]
  s.rubyforge_project = "middleman-livereload"
  s.rubygems_version = "2.0.7"
  s.summary = "Adds LiveReload to Middleman"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.0.2"])
      s.add_runtime_dependency(%q<rack-livereload>, [">= 0"])
      s.add_runtime_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.0.2"])
      s.add_dependency(%q<rack-livereload>, [">= 0"])
      s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.0.2"])
    s.add_dependency(%q<rack-livereload>, [">= 0"])
    s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
  end
end
