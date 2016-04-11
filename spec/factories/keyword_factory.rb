FactoryGirl.define do
  factory :keyword do
    word { Faker::Hipster.words(1).first }
  end
end
