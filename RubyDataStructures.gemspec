# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "RubyDataStructures/version"

Gem::Specification.new do |s|
  s.name        = "RubyDataStructures"
  s.version     = Rubydatastructures::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Satyaram B V"]
  s.email       = ["bvsatyaramATgmailDOTcom"]
  s.homepage    = "http://bvsatyaram.com"
  s.summary     = %q{Implementation of standard data structures in Ruby}
  s.description = %q{Implementation of standard data structures in Ruby}

  s.rubyforge_project = "RubyDataStructures"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end