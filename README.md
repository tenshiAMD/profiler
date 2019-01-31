profiler
=========

[![CircleCI](https://circleci.com/gh/tenshiAMD/profiler.svg?style=svg)](https://circleci.com/gh/tenshiAMD/profiler)
[![Build Status](https://travis-ci.org/tenshiAMD/profiler.svg?branch=master)](https://travis-ci.org/tenshiAMD/profiler)
[![Coverage Status](https://coveralls.io/repos/github/tenshiAMD/profiler/badge.svg?branch=master)](https://coveralls.io/github/tenshiAMD/profiler?branch=master)

**[Profiler is still underdevelopment]**

Profiler is a profiling solution for different entities.

Profiler add the following informations below:
* profile
* contact numbers
* education
* email address
* relationships
* works
* websites
* other informations

## Requirements
#### Ruby
* 2.3
* 2.4
* 2.5 (recommended)
* 2.6

#### Rails
* 5.0
* 5.1
* 5.2 (recommended)

#### Databases
* PostgreSQL (recommended)
* MySQL
* SQLite

## Installation
Add this in the Gemfile of your project
```
gem 'profiler'
```

Then run the install generator
```
bundle exec rails generate profiler:install 
```

## Usage
All you need to do is to add the code below to any class you want to have profile:
```
has_profile
```

## Testing
To perform test, you need to run the following commands below:

#### Format
```
bundle exec appraisal rails_<version> test_app
bundle exec appraisal rails_<version> rspec
```
#### Example
```
bundle exec appraisal rails_5_2 rake test_app 
bundle exec appraisal rails_5_2 rspec
```

## Contributing
Pull request, issue reports, comments and suggestions are warmly welcome and greatly appreciated.

1. Fork this repository ( https://github.com/tenshiAMD/profiler/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Always test your changes and make sure nothing broken
4. Commit your changes (`git commit -m 'My new feature'`)
5. Push your feature branch (`git push origin my-new-feature`)
6. Create a new pull request

## Copyright
Copyright © 2018 Angel Aviel Domaoan. 

It is open-source, free software, and may be
redistributed under the terms specified in the LICENSE file.
