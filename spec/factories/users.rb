FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    date { Faker::Date.between(2.days.ago, Date.today) }
    number { Faker::Number.between(1, 10) }
    description { Faker::Lorem.sentence }
  end
end