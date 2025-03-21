# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rack', '~> 3.0'
gem 'rack-session', '~> 2.0'
gem 'rackup', '~> 2.1'
gem 'rails', '< 8.0'

# cache store
gem 'redis', '~> 5.0'
gem 'redis-rack', git: 'https://github.com/redis-store/redis-rack', branch: 'master'
gem 'redis-rails', git: 'https://github.com/redis-store/redis-rails', branch: 'master'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '6.5.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# css
gem 'sprockets-rails'
gem 'tailwindcss-rails', '< 4.0'

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
  gem 'rubocop-rspec', '~> 3.0', require: false
  gem 'rubocop-rspec_rails', '~> 2.0', require: false
end

group :development do
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler', '>= 2.3.3'
  gem 'capistrano', '~> 3.17', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rvm', require: false
end

group :test do
  gem 'database_cleaner', '~> 2.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec-rails', '~> 7.0'
  gem 'simplecov', require: false
end
