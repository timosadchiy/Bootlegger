FactoryGirl.define do
  factory :brewery do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
  end
end
