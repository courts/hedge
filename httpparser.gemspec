# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{httpparser}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Hof"]
  s.date = %q{2012-04-05}
  s.email = %q{courts@offensivethinking.org}
  s.files = ["lib/httpparser.tt"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.summary = %q{A simple and incomplete HTTP parser}
  s.add_dependency('treetop', '>= 1.4.9')
end
