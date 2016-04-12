  class Parser
  def self.validate_filetype(file)
    file.content_type == "text/plain"
  end

  def self.text_score(document)
    # Regex Text
    split_text = self.words(document)
    word_count = self.word_count(split_text)
    keyword_count = self.keyword_values
    find_matches = self.find_matches(word_count, keyword_count)
    self.save_doc_keyword(find_matches, document)
    document.sentiment_score = find_matches.values.reduce(:+) || 0
    document.save
  end

  private

  def self.save_doc_keyword(find_matches, document)
    words = find_matches.keys
    keyword_objects = Keyword.where(word: words)
    keyword_objects.each { |keyword| document.keywords << keyword }
  end

  def self.find_matches(word_count, keyword_count)
    word_count.keys.each_with_object({}) do |word, value_hash|
      value_hash[word] = word_count[word] * keyword_count[word] if keyword_count[word]
    end
  end

  def self.words(document)
    document.text.split(" ")
  end

  def self.word_count(split_text)
    split_text.each_with_object(Hash.new(0)) do |word, word_count|
      word.upcase == word ? word_count[word] += 1 : word_count[word.downcase] += 1
    end
  end

  def self.keyword_values
    word_value_pairs = Keyword.joins(:values).pluck(:word, :rating)
    Hash[word_value_pairs]
  end
end
