source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.3.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


gem 'spree', '2.3.1'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-3-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-3-stable'



gem 'spree_multi_currency', :github => "spree-contrib/spree_multi_currency", branch: '2-3-stable'
gem 'spree_static_content', github: 'spree-contrib/spree_static_content', branch: '2-3-stable'
gem 'spree_editor',         github: 'jaemo/spree_editor', branch: '2-3-stable'

gem 'spree_i18n', github: 'spree/spree_i18n', branch: '2-3-stable'
gem 'spree_wishlist', github: 'wbslogistic/spree_wishlist', branch: '2-3-stable'
gem 'owlcarousel-rails'

gem 'ruport'
gem 'ruport-util'
gem 'spree_advanced_reporting', github: 'wbslogistic/spree-advanced-reporting' 

#gem "feedzirra", github: 'feedjira/feedjira'
gem 'feedjira'

# klisha
gem 'pg'

gem "net-ssh", "~> 2.7.0"

gem "font-awesome-rails", "~> 4.2.0"

# Better debug
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'deadweight', require: false
end

group :tools do
  gem 'capistrano', '~> 2.0'
  gem 'capistrano_colors'
  gem 'sushi'
  gem 'recap', '~> 1.2'
  gem 'capistrano-unicorn', require: false
  gem 'bundler-audit'
  gem 'capistrano-colorized-stream'
  gem 'capistrano-rbenv'
end

group :production do
  gem 'unicorn'
end

gem 'selectize-rails'
gem 'bootstrap-datepicker-rails'
gem 'debugger'
