module Profiler
  class Engine < Rails::Engine
    isolate_namespace Profiler
    engine_name "profiler"

    initializer "profiler.checking_migrations" do
      Migrations.new(config, engine_name).check
    end
  end
end
