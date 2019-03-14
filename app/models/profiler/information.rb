module Profiler
  class Information < ::ActiveRecord::Base
    self.table_name = "profiler_informations"

    belongs_to :record, polymorphic: true, optional: false

    validates :label, :content, presence: true
    validates :content, uniqueness: { scope: %i[type label record_type record_id] }
  end
end
