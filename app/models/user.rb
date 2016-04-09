class User < ActiveRecord::Base
  belongs_to :group
  has_secure_password

  validates :first_name, :last_name, :email, presence: true

  def business_account?
    self.business_account
  end

  def self.find_group(email)
    domain = email.match(/\@(.*)/).to_s
    Group.find_by_domain(domain)
  end
end
