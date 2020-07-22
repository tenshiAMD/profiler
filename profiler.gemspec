require_relative "lib/profiler/version"

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = "profiler"
  s.version           = Profiler.version
  s.homepage          = "http://github.com/tenshiAMD/profiler"
  s.summary           = "Profiler is a profiling solution for different entities."
  s.description       = "A profiling solution for different entities."

  s.authors           = ["Angel Aviel Madlangbayan Domaoan"]
  s.email             = ["dev.tenshiamd@gmail.com"]
  s.license           = "MIT"

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths     = ["lib"]

  s.add_dependency "bundler", ">= 1.3.0"
  s.add_dependency "rails", ">= 5.0"

  s.add_dependency "highline", ">= 1.6.18", "< 2.1.0" # Necessary for the install generator
end
