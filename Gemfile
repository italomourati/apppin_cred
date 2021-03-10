source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
#gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'brazilian-rails'
# Use Active Storage variant
#gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# GEMS SITE

gem 'devise'
gem 'rails-i18n', '~> 6.0.0'
gem 'tty-spinner'
gem 'font-awesome-sass'
gem 'kaminari'
gem 'kaminari-i18n'
gem 'image_processing', '~> 1.0'
gem 'bootstrap', '~> 4.4.1'
gem 'ckeditor'
gem "mini_magick"
#gem 'font_awesome5_rails'
#gem 'font-awesome-rails'
gem 'sweetalert2-rails'
#gem 'jquery_mask_rails', '~> 0.1.0' - falta o bundle
gem 'rest', '~> 3.0', '>= 3.0.8'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'awesome_print'
  gem 'capistrano', "~> 3.13", require: false
  gem 'capistrano-rvm'
  gem 'capistrano-bundler', '~> 1.6'
  gem "capistrano-rails", "~> 1.4", require: false
  gem 'capistrano3-unicorn'
end

group :production do
  gem 'mysql2' #, '~> 0.3.18'
  gem 'unicorn'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
