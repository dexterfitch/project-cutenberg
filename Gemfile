source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'

group :development do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'pry'
  gem 'launchy'
  # save_and_open_page - triggers launchy. Insert before expect/should line in capybara spec methods.
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
end

group :production do
  gem 'rails_12factor'
end
