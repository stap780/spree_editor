# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_editor/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_editor'
  s.version     = SpreeEditor.version
  s.summary     = 'Adds support for WYSIWYG editors to Spree'
  s.description = 'Currently supported editors are CKEditor and TinyMCE'
  s.required_ruby_version = '>= 2.1.0'

  s.authors       = ['Alexander Shuhin', 'Roman Smirnov', 'divineforest', 'Marc Lee', 'Jeff Dutil']
  s.homepage      = 'https://github.com/spree/spree_editor'
  s.license       = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.1.0', '< 5.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency 'ckeditor', '~> 5.1.0'
  s.add_dependency 'tinymce-rails', '~> 4.2.5'
  s.add_dependency 'coffee-rails'
  s.add_runtime_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'i18n-spec', '>= 0.5.0'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 4.0.0.beta2'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'puma'
end
