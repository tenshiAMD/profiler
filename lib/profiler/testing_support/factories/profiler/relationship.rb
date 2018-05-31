FactoryBot.define do
  factory :relationship, class: Profiler::Relationship do
    label { Faker::Lorem.word }
    content { Faker::Lorem.sentence }

    association :record, factory: :user
  end
end
