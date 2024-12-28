source "https://rubygems.org"

ruby "3.3.1"

gem "rails", "~> 7.1.0"
gem "pg" # PostgreSQL
gem "puma", ">= 5.0"

gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "sprockets-rails"

# Dev/Test dependencies
group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem "capybara"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console"
end

group :production do
  gem "pg"
end
