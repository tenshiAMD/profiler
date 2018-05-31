module Profiler
  module ActiveRecord
    extend ActiveSupport::Concern

    module ClassMethods
      def has_profile
        include Profiler::Profileable
      end
    end
  end
end
