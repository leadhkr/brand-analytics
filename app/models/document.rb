# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  text       :text
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords
  has_many :keywords, through: :document_keywords

  validates :text, presence: true

  accepts_nested_attributes_for :keywords
# validates :text, format: { with: /.txt\z/ }

  def analyze_text
    # Regex Text
    text_array = split_text
    word_count = count_words(text_array)
    # find keywords in hash and multiply count by value
    # return score
  end

  def split_text
    self.text.split(" ")
  end

  def count_words(text_array)
    text_array.each_with_object(Hash.new(0)) do |word, word_count_hash|




      if word.upcase == word
        word_count_hash[word] += 1
      else
        word_count_hash[word.downcase] += 1
      end
    end
  end



end
