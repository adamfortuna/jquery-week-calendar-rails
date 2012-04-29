# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "jquery-week-calendar"
  s.version     = "0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam Fortuna"]
  s.email       = ["adam@envylabs.com"]
  s.homepage    = "https://github.com/adamfortuna/jquery-week-calendar"
  s.summary     = "Wrapper for the jQuery Week Calendar plugin"
  s.description = "Wrapper for https://github.com/themouette/jquery-week-calendar"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "rails", ">= 3.0.0"

  s.files        = Dir.glob("{lib,vendor}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end