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

class User < ActiveRecord::Base
  belongs_to :group
  has_secure_password

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: { on: :create }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, confirmation: true, length: { minimum: 8 }

  def business_account?
    self.business_account
  end

  def self.find_group(email)
    domain = email.match(/\@(.*)/).to_s
    Group.find_by_domain(domain)
  end
end
