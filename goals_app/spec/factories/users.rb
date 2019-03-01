FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    password { 'starwars' }
  end
end
