source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
gem 'pg', '~> 0.18'

# Use Puma as the app server
gem 'puma', '~> 3.7'
gem 'active_model_serializers', '~> 0.10.0'
gem 'knock'
gem 'pundit' # For user policies
gem 'httparty' # For making http requests

#  Pylon from private gem server
source 'https://BpebLPWGNwHtsS4rSvYy@gem.fury.io/gamut/' do
  gem 'pylon', '1.3.1'
end


# Gems required for database seeds
group :development, :test, :ci, :qa do
  gem 'factory_bot_rails', '~> 4.8.2'
  gem 'faker'
  gem 'pgreset'
end

group :development, :test do
  gem 'json_spec', '~> 1.1.4'
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec-given', '~> 3.8.0'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'pry-rails'
  gem 'awesome_print', require: false
  gem 'parallel_tests'
  gem 'pry-remote'
  gem 'bcrypt'
end

group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
  gem 'pundit-matchers'
end

group :development do
  gem 'rack_request_logger', :git => 'https://github.com/itsthatguy/rack_request_logger', :tag => 'v0.0.2'
  gem 'listen', '~> 3.0.5'
end