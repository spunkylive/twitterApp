source 'http://rubygems.org'

gem 'rails', '3.1.12'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

    
group :production do
    # Only gems for heroku
    gem 'therubyracer-heroku', '0.8.1.pre3'
    gem 'pg'
end

gem 'nifty-generators'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem "bcrypt-ruby", :require => "bcrypt"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'therubyracer-heroku', '0.8.1.pre3'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end
gem "mocha", :group => :test
ruby "2.0.0"
