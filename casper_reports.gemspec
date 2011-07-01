# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)


Gem::Specification.new do |s|
  s.name        = "casperreports"
  s.version     = "0.1.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tom Wilson"]
  s.email       = ["tom@jackhq.com"]
  s.homepage    = "http://github.com/twilson63/casper"
  s.summary     = "An Opinionated Library for JasperReports"
  s.description = "A simple library that allows you to send a jrxml document, xml document, and selector to generate a jaspser pdf report. "
  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "rspec", ">= 2.5.0"
  s.files        = Dir.glob("{lib}/**/*") + Dir.glob("{include}/**/*") + Dir.glob("{spec}/**/*") + %w(LICENSE readme.md Rakefile)
  s.require_path = 'lib'
end