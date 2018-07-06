module Profiler
  module Profileable
    extend ActiveSupport::Concern

    included do
      has_many_attached :pictures if defined?(ActiveStorage)

      with_options as: :record, inverse_of: :record, dependent: :destroy do
        has_one :profile, class_name: 'Profiler::Profile'

        has_many :addresses, class_name: 'Profiler::Address'
        has_many :contact_numbers, class_name: 'Profiler::ContactNumber'
        has_many :informations, -> { where(type: nil) }, class_name: 'Profiler::Information'
        has_many :email_addresses, class_name: 'Profiler::EmailAddress'
        has_many :educations, class_name: 'Profiler::Education'
        has_many :relationships, class_name: 'Profiler::Relationship'
        has_many :websites, class_name: 'Profiler::Website'
        has_many :works, class_name: 'Profiler::Work'
      end

      accepts_nested_attributes_for :profile,
                                    reject_if: proc { |attrs|
                                                 %w[first_name last_name gender birth_date
                                                    civil_status].any? { |field| attrs[field].blank? }
                                               }

      %i[addresses contact_numbers educations informations email_addresses
         relationships websites works].each do |assoc|
        accepts_nested_attributes_for assoc, reject_if: :all_blank
      end
    end
  end
end
