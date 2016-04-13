class Parser
  def self.text_score(record)
    # Regex Text
    split_text = self.words(record)
    word_count = self.word_count(split_text)
    keyword_count = self.keyword_values
    find_matches = self.find_matches(word_count, keyword_count)
    matched_values = find_matches.values
    polarity_score = self.split_polarity(matched_values)
    sentiment_score = self.sentiment_score(matched_values)

    if record.class == Tweet
      record.twitter_search.sentiments.create(sentiment_score: sentiment_score, polarity_score: polarity_score)
    else
      record.create_sentiment(sentiment_score: sentiment_score, polarity_score: polarity_score)
    end
  end

  private

  def self.sentiment_score(matched_values)
    matched_values.reduce(:+) || 0
  end

  def self.split_polarity(matched_values)
    split_array = matched_values.partition { |rating| rating > 0 }
    positive_ratings = split_array.first
    negative_ratings = split_array.last

      if positive_ratings.length == 0
        average_positive = 0
        average_negative = negative_ratings.reduce(:+) / negative_ratings.length
      elsif negative_ratings.length == 0
        average_positive = positive_ratings.reduce(:+) / positive_ratings.length
        average_negative = 0
      else
        average_positive = positive_ratings.reduce(:+) / positive_ratings.length
        average_negative = negative_ratings.reduce(:+) / negative_ratings.length
      end

    average_positive - average_negative
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
