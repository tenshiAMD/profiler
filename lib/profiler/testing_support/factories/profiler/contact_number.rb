FactoryBot.define do
  factory :contact_number, class: Profiler::ContactNumber do
    label { Faker::Lorem.word }
    content { Faker::IDNumber.valid }

    association :record, factory: :user
  end
end
