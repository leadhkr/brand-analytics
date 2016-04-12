class TwitterSearch < ActiveRecord::Base
  has_many :tweets
  belongs_to :group

  # validates :search_query, :description, presence: true
end
