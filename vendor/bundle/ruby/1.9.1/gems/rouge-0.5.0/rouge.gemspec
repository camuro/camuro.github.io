require './lib/rouge/version'

Gem::Specification.new do |s|
  s.name = "rouge"
  s.version = Rouge.version
  s.authors = ["Jay Adkisson"]
  s.email = ["jjmadkisson@gmail.com"]
  s.summary = "A pure-ruby colorizer based on pygments"
  s.description = <<-desc.strip.gsub(/\s+/, ' ')
    Rouge aims to a be a simple, easy-to-extend drop-in replacement
    for pygments.
  desc
  s.homepage = "http://github.com/jayferd/rouge"
  s.rubyforge_project = "rouge"
  s.files = Dir['Gemfile', 'LICENSE', 'rouge.gemspec', 'lib/**/*.rb', 'bin/rougify', 'lib/rouge/demos/*']
  s.executables = %w(rougify)
  s.license = 'MIT (see LICENSE file)'

  s.add_dependency 'thor'
end
