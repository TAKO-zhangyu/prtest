# -*- encoding: utf-8 -*-
# stub: libv8 7.3.492.27.1 x86_64-darwin-18 lib ext

Gem::Specification.new do |s|
  s.name = "libv8".freeze
  s.version = "7.3.492.27.1"
  s.platform = "x86_64-darwin-18".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "ext".freeze]
  s.authors = ["Charles Lowell".freeze]
  s.date = "2019-04-24"
  s.description = "Distributes the V8 JavaScript engine in binary and source forms in order to support fast builds of The Ruby Racer".freeze
  s.email = ["cowboyd@thefrontside.net".freeze]
  s.homepage = "http://github.com/cowboyd/libv8".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Distribution of the V8 JavaScript engine".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 12"])
    s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 12"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
  end
end
