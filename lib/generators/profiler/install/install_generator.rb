require 'rails/generators'
require 'highline/import'
require 'bundler'
require 'bundler/cli'

module Profiler
  class InstallGenerator < Rails::Generators::Base
    class_option :migrate, type: :boolean, default: true, banner: 'Run Profiler migrations'
    class_option :seed, type: :boolean, default: true,
                        banner: 'load seed data (migrations must be run)'

    def self.source_paths
      paths = superclass.source_paths
      paths << File.expand_path('../templates', "../../#{__FILE__}")
      paths << File.expand_path('../templates', "../#{__FILE__}")
      paths << File.expand_path('templates', __dir__)
      paths.flatten
    end

    def prepare_options
      @run_migrations = options[:migrate]
      @load_seed_data = options[:seed]

      @load_seed_data = false unless @run_migrations
    end

    def install_migrations
      say_status :copying, 'migrations'
      silence_warnings { rake 'railties:install:migrations' }
    end

    def run_migrations
      if @run_migrations
        say_status :running, 'migrations'
        silence_warnings { rake 'db:migrate' }
      else
        say_status :skipping, "migrations (don't forget to run rake db:migrate)"
      end
    end
  end
end
