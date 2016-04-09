FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    sequence :email do |n|
      "person#{n}@apple.com"
    end

    password "testpassword"
    password_confirmation "testpassword"
    # group factory: :group
  end
end
