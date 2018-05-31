profiler
=========

[![Build Status](https://travis-ci.org/tenshiAMD/profiler.svg?branch=master)](https://travis-ci.org/tenshiAMD/profiler)

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

## Compatibility
Ruby: 2.3.4, 2.4.4, 2.5.1

Rails: 5.0 or latest

Database: SQLite, MySQL, and PostgreSQL

## Installation
Add this in the Gemfile of your project
```
gem 'profiler'
```

Then run the install generator
```
rails generate profiler:install 
```

## Usage
All you need to do is to add the code below to any class you want to have profile:
```
has_profile
```

## Testing
To perform test, run the following commands below:
```
bundle exec appraisal rails_5.2 rake test_app 
bundle exec appraisal rails_5.2 rspec
```

## Contributing
Pull request, comments and suggestions are warmly welcome and appreciated.

Thank you to all the contributors!

## Copyright
Copyright © 2018 Angel Aviel Domaoan. 

It is open-source, free software, and may be
redistributed under the terms specified in the LICENSE file.

