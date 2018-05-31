require_relative 'lib/profiler/version'

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'profiler'
  s.version           = Profiler.version
  s.homepage          = 'http://github.com/tenshiAMD/profiler'
  s.summary           = 'Profiler is a profiling solution for different entities.'
  s.description       = 'A profiling solution for different entities.'

  s.authors           = ['Angel Aviel Madlangbayan Domaoan']
  s.email             = ['dev.tenshiamd@gmail.com']
  s.license           = 'MIT'

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths     = ['lib']

  s.add_dependency 'rails', '>= 5.0'

  s.add_dependency 'highline', '~> 1.6.18' # Necessary for the install generator

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-callback-matchers'
  s.add_development_dependency 'shoulda-matchers', '~> 3.0'

  s.add_development_dependency 'mysql2', '~> 0.4.0'
  s.add_development_dependency 'pg', '~> 0.21.0'
  s.add_development_dependency 'sqlite3'
end
