# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{main}
  s.version = "4.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ara T. Howard"]
  s.date = %q{2010-11-25}
  s.description = %q{a class factory and dsl for generating command line programs real quick}
  s.email = %q{ara.t.howard@gmail.com}
  s.files = ["test/main.rb"]
  s.homepage = %q{http://github.com/ahoward/main/tree/master}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{codeforpeople}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{main}
  s.test_files = ["test/main.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fattr>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<arrayfields>, [">= 4.7.4"])
    else
      s.add_dependency(%q<fattr>, [">= 2.1.0"])
      s.add_dependency(%q<arrayfields>, [">= 4.7.4"])
    end
  else
    s.add_dependency(%q<fattr>, [">= 2.1.0"])
    s.add_dependency(%q<arrayfields>, [">= 4.7.4"])
  end
end
