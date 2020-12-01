source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'                    # Ruby on Rails
gem 'puma', '~> 3.11'                                    # Use Puma as the app server
gem 'sass-rails', '~> 5.0'                               # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                               # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2'                             # Use CoffeeScript for .coffee assets and views
gem 'turbolinks', '~> 5'                                 # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'bootsnap', '>= 1.1.0', require: false               # Reduces boot times through caching; required in config/boot.rb


gem 'devise', '~> 4.7.1'                                 # User authentication
gem 'mongoid', '~> 6.4.0'                                # NoSQL Database
gem 'algoliasearch-rails'
gem 'locomotivecms',                                     # Content Management System
  github: 'CreateTheBridge/engine',
  tag: 'v4.0.3'
gem 'custom_fields',
  github: 'CreateTheBridge/custom_fields',
  branch: '2.10.0'

gem 'foreman', '0.76.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development



group :development, :test do
  gem 'byebug',                                          # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'                          # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'                                           # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'                              # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'                              # Easy installation and use of chromedriver to run system tests with Chrome
end


gem 'tzinfo-data',                                       # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  platforms: [:mingw, :mswin, :x64_mingw, :jruby]
