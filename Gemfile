# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "devise"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.1"

gem "cssbundling-rails"
gem "jsbundling-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

gem "bootsnap", require: false
gem "redis", "~> 4.0"
# gem "kredis"
gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :development do
  gem "rack-mini-profiler"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
