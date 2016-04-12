# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string
#  street_address :string
#  city           :string
#  state          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  zip_code       :integer
#  domain         :string
#

FactoryGirl.define do
  sequence :name do |n|
    Faker::Company.name + "#{n}"
  end

  sequence :domain do |n|
    "@#{ Faker::Internet.domain_name }"
  end

  factory :group do
    name
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip }
    domain
  end
end
