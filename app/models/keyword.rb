class Keyword < ActiveRecord::Base
  has_many :document_keywords
  has_many :documents, through: :document_keywords
  has_many :keyword_values
  has_many :values, through: :keyword_values

  validates :word, presence: true

  def self.most_used(group)
    self.joins(:documents).group('word').having(documents: {group_id: group.id}).order('count_word DESC').limit(5).count('word')
  end

  def self.least_used(group)
    self.joins(:documents).group('word').having(documents: {group_id: group.id}).order('count_word ASC').limit(5).count('word')
  end
end
