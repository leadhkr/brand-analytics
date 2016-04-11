class DocumentKeyword < ActiveRecord::Base
  belongs_to :document
  belongs_to :keyword

  accepts_nested_attributes_for :keyword

  

end
