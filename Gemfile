# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sassc-rails'

# jsbundling
gem 'jsbundling-rails', '~> 1.0'

# running
gem 'foreman'

# performance metrics
gem 'skylight'

# sitemap generator
gem 'sitemap_generator'

# errors reports
gem 'bugsnag'

group :development, :test do
  gem 'rubocop', '~> 1.23', require: false
  gem 'rubocop-performance', '~> 1.12', require: false
  gem 'rubocop-rails', '~> 2.12', require: false
  gem 'rubocop-rspec', '~> 2.6', require: false
end

group :development do
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler', '>= 2.3.3'
  gem 'capistrano', '~> 3.17', require: false
  gem 'capistrano3-puma', github: 'seuros/capistrano-puma'
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rvm', require: false
  gem 'sshkit-sudo'
end

group :test do
  gem 'database_cleaner', '~> 2.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec-rails', '~> 6.0'
  gem 'simplecov', require: false
end
