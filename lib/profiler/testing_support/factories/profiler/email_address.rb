FactoryBot.define do
  factory :email_address, class: Profiler::EmailAddress do
    label { Faker::Lorem.word }
    content { Faker::Internet.email }

    association :record, factory: :user
  end
end
