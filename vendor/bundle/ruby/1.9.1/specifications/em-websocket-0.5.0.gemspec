# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "em-websocket"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ilya Grigorik", "Martyn Loughran"]
  s.date = "2013-03-05"
  s.description = "EventMachine based WebSocket server"
  s.email = ["ilya@igvita.com", "me@mloughran.com"]
  s.homepage = "http://github.com/igrigorik/em-websocket"
  s.require_paths = ["lib"]
  s.rubyforge_project = "em-websocket"
  s.rubygems_version = "2.0.7"
  s.summary = "EventMachine based WebSocket server"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
      s.add_development_dependency(%q<em-spec>, ["~> 0.2.6"])
      s.add_development_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<em-http-request>, ["~> 0.2.6"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
      s.add_dependency(%q<em-spec>, ["~> 0.2.6"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<em-http-request>, ["~> 0.2.6"])
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
    s.add_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
    s.add_dependency(%q<em-spec>, ["~> 0.2.6"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<em-http-request>, ["~> 0.2.6"])
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
