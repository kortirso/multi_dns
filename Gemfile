# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sassc-rails'

# jsbundling
gem 'jsbundling-rails', '~> 1.0'

# running
gem 'foreman'

group :development, :test do
  gem 'rubocop', '~> 1.23', require: false
  gem 'rubocop-performance', '~> 1.12', require: false
  gem 'rubocop-rails', '~> 2.12', require: false
  gem 'rubocop-rspec', '~> 2.6', require: false
end

group :development do
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler', '>= 2.3.3'
end

group :test do
  gem 'database_cleaner', '~> 1.8.5'
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec-rails', '5.0.2'
  gem 'simplecov', require: false
end
