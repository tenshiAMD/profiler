FactoryBot.define do
  factory :profile, class: Profiler::Profile do
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.last_name }
    last_name { Faker::Name.last_name }
    suffix_name { Faker::Name.suffix }
    birth_date { Faker::Date.between(100.years.ago, Time.zone.today) }
    gender { Faker::Number.between(0, Profiler::Profile.genders.count - 1) }
    civil_status { Faker::Number.between(0, Profiler::Profile.civil_statuses.count - 1) }

    association :record, factory: :user
  end
end
