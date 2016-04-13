class Parser
  def self.text_score(record)
    # Regex Text
    split_text = self.words(record)
    word_count = self.word_count(split_text)
    keyword_count = self.keyword_values
    find_matches = self.find_matches(word_count, keyword_count)
    matched_values = find_matches.values
    polarity_score = self.calculate_polarity(matched_values)
    sentiment_score = self.sentiment_score(matched_values)
    sentiment_percentage = self.calculate_sentiment_percentage(split_text, sentiment_score)
    record.create_sentiment(sentiment_score: sentiment_score, polarity_score: polarity_score, sentiment_percentage: sentiment_percentage)
  end

  private

  def self.calculate_sentiment_percentage(split_text, sentiment_score)
    (sentiment_score / split_text.length * 100).to_i
  end

  def self.sentiment_score(matched_values)
    matched_values.reduce(:+) || 0
  end

  def self.split_polarity(matched_values)
    matched_values.partition { |rating| rating > 0 }
  end

  def self.calculate_polarity(matched_values)
    split_array = split_polarity(matched_values)
    positive_ratings = split_array.first
    negative_ratings = split_array.last
    total_positive = positive_ratings.reduce(:+) || 0
    avg_p = positive_ratings.empty? ? total_positive : total_positive/positive_ratings.length
    total_negative = negative_ratings.reduce(:+) || 0
    avg_n = negative_ratings.empty? ? total_negative : total_negative/negative_ratings.length
    avg_p - avg_n
  end

  def self.find_matches(word_count, keyword_count)
    word_count.keys.each_with_object({}) do |word, value_hash|
      value_hash[word] = word_count[word] * keyword_count[word] if keyword_count[word]
    end
  end

  def self.words(record)
    record.text.split(" ")
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
