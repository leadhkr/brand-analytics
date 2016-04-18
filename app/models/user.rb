class User < ActiveRecord::Base
  belongs_to :group
  has_secure_password

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: { on: :create }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, confirmation: true, length: { minimum: 8 }

  def self.find_group(email)
    domain = email.match(/\@(.*)/).to_s
    Group.find_by_domain(domain)
  end
end
