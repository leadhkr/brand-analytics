  class Parser
  def self.validate_filetype(file)
    file.content_type == "text/plain"
  end

  def self.text_score(document)
    # Regex Text
    split_text = self.words(document)
    word_count = self.word_count(split_text)
    keyword_count = self.keywords
    find_matches = self.find_matches(word_count, keyword_count)
    doc_keyword = self.save_doc_keyword(find_matches, document)
    matched_values = find_matches.values
    polarity_score = self.split_polarity(matched_values)
    document.sentiment_score = matched_values.reduce(:+) || 0
    document.save
  end

  def self.split_polarity(matched_values)
    split_array = matched_values.partition { |rating| rating > 0 }
    positive_ratings = split_array.first
    negative_ratings = split_array.last
    average_positive = positive_ratings.reduce(:+) / positive_ratings.length
    average_negative = negative_ratings.reduce(:+) / negative_ratings.length 
    polarity_score = average_positive - average_negative
  end

  def self.save_doc_keyword(find_matches, document)
    find_matches.keys.each do |keyword|
      keyword_id = Keyword.find_by(word: keyword).id
      DocumentKeyword.create(keyword_id: keyword_id, document_id: document.id)
    end
  end

  def self.find_matches(word_count, keyword_count)
    word_count.keys.each_with_object({}) do |word, value_hash|
      value_hash[word] = word_count[word] * keyword_count[word] if keyword_count[word]
    end
  end

  private

  def self.words(document)
    document.text.split(" ")
  end

  def self.word_count(split_text)
    split_text.each_with_object(Hash.new(0)) do |word, word_count|
      word.upcase == word ? word_count[word] += 1 : word_count[word.downcase] += 1
    end
  end

  def self.keywords
    Keyword.all.each_with_object({}) do |keyword, keyword_hash|
      keyword_hash[keyword.word] = keyword.values.collect { |keyword| keyword.rating }.first
    end
  end
end
