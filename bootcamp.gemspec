# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "bootcamp/version"

Gem::Specification.new do |s|
  s.name = "bootcamp"
  s.version = Bootcamp::VERSION
  s.authors = ["Jeremy Woertink <jeremywoertink@gmail.com>"]
  s.homepage = "http://jshq.org"
  s.summary = %q{Check out the README file for more info}
  s.description = %q{Check out the README file for more info}
  s.rubyforge_project = "bootcamp"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('git')
  s.add_dependency('thor')
  s.add_dependency('highline')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 2.5')
  s.add_development_dependency('yard')
end
