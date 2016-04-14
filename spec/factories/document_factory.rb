# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  text       :text
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

FactoryGirl.define do
  factory :document do
    title { Faker::Book.title }
    file_type "plain"
    text "Still, software engineers are at the top of the back. Google best software engineers make the most money at the company, and make nearly double what they make when they join the company as an intern. GOOGLE MONEY SOFTWARE MONEY SOFTWARE GOOGLE"
  end
end
