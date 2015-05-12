source 'https://rubygems.org'

ruby File.read(File.expand_path("../.ruby-version", __FILE__)).strip

gem 'rails', '4.2.1'

# database
gem 'pg'

# view
gem 'slim-rails'

# assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# app server
# see: https://devcenter.heroku.com/changelog-items/594
gem 'puma'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails'

  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

