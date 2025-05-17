# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 8.0.2'
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '>= 2.1'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem 'kamal', require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem 'thruster', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # Acceptance test framework for web applications
  gem 'capybara'

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem 'brakeman', require: false

  # brings the RSpec testing framework to Ruby on Rails [https://rspec.info/]
  gem 'rspec-rails'

  # Static code analyzer and formatter [https://docs.rubocop.org/]
  gem 'rubocop', require: false

  # Code style checking for Capybara files [https://docs.rubocop.org/rubocop-capybara]
  gem 'rubocop-capybara', require: false

  # An extension of RuboCop focused on code performance checks [https://docs.rubocop.org/rubocop-performance]
  gem 'rubocop-performance', require: false

  # An extension focused on enforcing Rails best practices and coding conventions [https://docs.rubocop.org/rubocop-rails]
  gem 'rubocop-rails', require: false

  # Code style checking for RSpec files [https://docs.rubocop.org/rubocop-rspec]
  gem 'rubocop-rspec', require: false

  # Code style checking for Rails-related RSpec files [https://docs.rubocop.org/rubocop-rspec_rails]
  gem 'rubocop-rspec_rails', require: false

  # Simple one-liner tests for common Rails functionality [https://matchers.shoulda.io/]
  gem 'shoulda-matchers'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end
