FactoryBot.define do
  factory :information, class: Profiler::Information do
    label { Faker::Lorem.word }
    content { Faker::Lorem.sentence }

    association :record, factory: :user
  end
end
