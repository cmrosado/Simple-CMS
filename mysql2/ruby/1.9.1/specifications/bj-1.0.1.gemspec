# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bj}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ara T. Howard"]
  s.date = %q{2008-01-08}
  s.default_executable = %q{bj}
  s.email = %q{ara.t.howard@gmail.com}
  s.executables = ["bj"]
  s.files = ["bin/bj"]
  s.homepage = %q{http://codeforpeople.com/lib/ruby/bj/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{codeforpeople}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{bj}

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<main>, [">= 2.6.0"])
      s.add_runtime_dependency(%q<systemu>, [">= 1.2.0"])
      s.add_runtime_dependency(%q<orderedhash>, [">= 0.0.3"])
    else
      s.add_dependency(%q<main>, [">= 2.6.0"])
      s.add_dependency(%q<systemu>, [">= 1.2.0"])
      s.add_dependency(%q<orderedhash>, [">= 0.0.3"])
    end
  else
    s.add_dependency(%q<main>, [">= 2.6.0"])
    s.add_dependency(%q<systemu>, [">= 1.2.0"])
    s.add_dependency(%q<orderedhash>, [">= 0.0.3"])
  end
end
