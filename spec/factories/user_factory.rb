# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name       :string
#  last_name        :string
#  email            :string
#  business_account :boolean
#  group_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  password_digest  :string
#

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
