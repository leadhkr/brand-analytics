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

class Group < ActiveRecord::Base
  has_many :users
  has_many :documents

  validates :name, :street_address, :city, :state, :zip_code, :domain, presence: true
  validates :name, :domain, uniqueness: true
  validates :domain, format: { with: /\A@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
