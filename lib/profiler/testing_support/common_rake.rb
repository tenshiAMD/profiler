require 'generators/profiler/install/install_generator'
require 'generators/profiler/dummy/dummy_generator'

desc 'Generates a dummy app for testing'
namespace :common do
  task :test_app do |_t, _args|
    require ENV['LIB_NAME'].to_s

    ENV['RAILS_ENV'] = 'test'

    Profiler::DummyGenerator.start %w[--quiet]
    Profiler::InstallGenerator.start

    puts 'Setting up dummy database...'
    system("bundle exec rake db:drop db:create db:migrate > #{File::NULL}")
  end
end
