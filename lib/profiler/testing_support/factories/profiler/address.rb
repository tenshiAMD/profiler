FactoryBot.define do
  factory :address, class: Profiler::Address do
    label { Faker::Lorem.word }
    content { Faker::Address.full_address }

    association :record, factory: :user
  end
end
