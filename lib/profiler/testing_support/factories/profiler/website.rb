FactoryBot.define do
  factory :website, class: Profiler::Website do
    label { Faker::Lorem.word }
    content { Faker::Internet.domain_name }

    association :record, factory: :user
  end
end
