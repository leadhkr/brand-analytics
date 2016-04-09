FactoryGirl.define do
  factory :group do
    sequence :name do |n|
      Faker::Company.name + "#{n}"
    end

    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip }

    sequence :name do |n|
      Faker::Company.domain + "#{n}"
    end
  end
end
