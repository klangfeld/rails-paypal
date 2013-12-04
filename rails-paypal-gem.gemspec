# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rails-paypal/version", __FILE__)
Gem::Specification.new do |s|
  s.name        = 'rails-paypal-gem'
  s.version     =  RailsPaypalGem::VERSION
  s.date        = '2013-06-11'
  
  s.summary     = "Paypal for rails"
  s.description = "A simple paypal client for rails lovers and paypal haters! (forked from Alicia Tang"
  s.author      = "Jan Jezek"
  s.email       = 'mail@mediatainment-productions.com'
  s.license     = 'MIT'
  

  s.require_paths = %w[lib]
  s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]

  s.homepage    =
    'https://github.com/mediatainment/rails-paypal-gem'

  s.extra_rdoc_files = ['README.md']
  
  # dependency
  s.add_dependency('httparty')
end
