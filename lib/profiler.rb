require "rails/all"

module Profiler
  autoload :ActiveRecord, "profiler/active_record"
end

require "profiler/migrations"
require "profiler/engine"

ActiveRecord::Base.send(:include, Profiler::ActiveRecord)
