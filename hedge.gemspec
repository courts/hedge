# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hedge}
  s.version = "0.0.3"

  s.authors = ["Patrick Hof"]
  s.date = %q{2012-06-02}
  s.email = %q{courts@offensivethinking.org}
  s.files = %w(lib/hedge/hedge.tt)
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.summary = %q{A simple and incomplete HTTP request parser}
  s.add_dependency('treetop', '>= 1.4.9')
end
