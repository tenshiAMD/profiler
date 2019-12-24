source "https://rubygems.org"

gemspec

gem "appraisal"
gem "bootsnap", ">= 1.1.0"
gem "rake", ">= 11.1"

## Databases
gem "mysql2", "~> 0.4.0"
gem "pg", "~> 1.2.0"
gem "sqlite3", "~> 1.3.0"

group :development, :test do
  gem "coveralls", require: false
  gem "faker"
  gem "rspec"
  gem "rspec-rails"
  gem "rubocop"
end

group :test do
  gem "database_cleaner"
  gem "factory_bot"
  gem "shoulda-callback-matchers"
  gem "shoulda-matchers", "~> 3.0"
end
