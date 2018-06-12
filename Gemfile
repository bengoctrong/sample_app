source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.6"
gem "bootstrap-sass", "3.3.6"
gem "sqlite3"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
# gem "therubyracer", platforms: :ruby
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
# gem "redis", "~> 4.0"
gem "bcrypt", "~> 3.1.7"
# gem "capistrano-rails", group: :development
gem "rubocop", "~> 0.49.1", require: false
gem "config"
gem "jquery-rails"
gem "faker"
gem "will_paginate"
gem "bootstrap-will_paginate"
gem "carrierwave", "0.11.2"
gem "mini_magick", "4.5.1"
gem "fog", "1.38.0"
gem "i18n-js"
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
