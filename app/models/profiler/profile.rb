module Profiler
  class Profile < ::ActiveRecord::Base
    include Profiler::Utilities::Profile
  end
end
