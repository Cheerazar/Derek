FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name  }
    cohort { Faker::Lorem.characters(10) }
    email { Faker::Internet.email }
    password {Faker::Internet.password(8) }
  end
end
