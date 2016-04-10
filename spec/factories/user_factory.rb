FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@apple.com"
  end

  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email
    password "testpassword"
    password_confirmation "testpassword"

    trait :personal_account do
      business_account false
    end

    trait :business_account do
      business_account true
    end

    trait :associated_group do
      group
    end
  end
end
