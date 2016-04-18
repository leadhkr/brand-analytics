class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords, dependent: :destroy
  has_many :keywords, through: :document_keywords, dependent: :destroy
  has_one :sentiment, as: :record, dependent: :destroy

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :text, length: { minimum: 5 }

  def word_value_pairs
    split_words = Parser.words(self.text)
    word_count = Parser.word_count(split_words)
    keyword_count = Parser.keyword_values
    results = Parser.find_matches(word_count, keyword_count)
    results.map { |key, value| {"text": key.downcase, "size": value.abs * 10} }
  end

  def snippet
    self.text.first(250) + "..."
  end
end
