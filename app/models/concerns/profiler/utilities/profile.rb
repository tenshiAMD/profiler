module Profiler
  module Utilities
    module Profile
      extend ActiveSupport::Concern

      included do
        belongs_to :record, polymorphic: true, optional: false

        GENDERS = %w[female male].freeze
        enum gender: GENDERS

        CIVIL_STATUSES = %w[single married separeted widowed divorced].freeze
        enum civil_status: CIVIL_STATUSES

        validates :first_name, :last_name, :gender, :birth_date, :civil_status, presence: true
        validates :reference_number, uniqueness: true
      end
    end
  end
end
