source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#gem 'spring',        group: :development

#gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
#gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'sqlite3'
  gem 'dotenv-rails'
end

group :production do
  gem 'rails_12factor', group: :production
  gem 'pg'
end

gem "grape"
gem "faraday"
gem "paperclip", "~> 4.1"
gem 'turbolinks'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

ruby '2.1.1'
