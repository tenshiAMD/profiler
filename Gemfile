source "https://rubygems.org"

gemspec

gem "appraisal"
gem "bootsnap", ">= 1.1.0"
gem "rake", ">= 11.1"

## Databases
gem "mysql2", "~> 0.5.3"
gem "pg", "~> 1.2.3"
gem "sqlite3", "~> 1.4.2"

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
  gem "shoulda-matchers", "~> 5.0"
end
