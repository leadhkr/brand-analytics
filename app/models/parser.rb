class Parser
  def self.text_score(record)
    stripped_text = self.strip_text(record)
    split_text = self.words(stripped_text)
    word_count = self.word_count(split_text)
    keyword_count = self.keyword_values
    find_matches = self.find_matches(word_count, keyword_count)
    matched_values = find_matches.values
    self.create_sentiment(record, matched_values, split_text)
  end

  # TEXT PARSING METHODS

  def self.strip_text(record)
    record.text.gsub(/[#@,.:;?"-]/, '')
  end

  def self.words(stripped_text)
    stripped_text.split(" ")
  end

  def self.word_count(split_text)
    split_text.each_with_object(Hash.new(0)) do |word, word_count|
      # Separated in order to account for words that are all caps vs. first letter is capitalized
      # { 'good' => 1, 'GOOD' => 2 }
      word.upcase == word ? word_count[word] += 1 : word_count[word.downcase] += 1
    end
  end

  def self.keyword_values
    # Returns a collection of keywords and associated values
    word_value_pairs = Keyword.joins(:values).pluck(:word, :rating)
    # Creates a Hash of keyword and value pairs
    Hash[word_value_pairs]
  end

  def self.find_matches(word_count, keyword_count)
    word_count.keys.each_with_object({}) do |word, value_hash|
      value = get_word_value(word, keyword_count)
      value_hash[word] = value unless value.nil?
    end
  end

  def self.get_word_value(word, keyword_count)
    double_value = is_double_value(word, keyword_count) 
    double_value ? double_value * 2 : keyword_count[word]
  end

  def self.is_double_value(word, keyword_count)
    sliced_word = word.slice(0, word.length - 1) if word[-1] == "!"  # slice off ! at end
    upcased_word = word.downcase if word == word.upcase # account for upcased words
    keyword_count[sliced_word] || keyword_count[upcased_word] 
  end

  def self.join_tweets(tweets_array)
    tweets_array.inject("") { |accumulator, element| accumulator + element.text }
  end

  # SENTIMENT SCORE METHODS

  def self.calculate_sentiment_percentage(split_text, sentiment_score)
    # Raw Score multiplied by two to blw out score for charting (d3)
    raw_score = (sentiment_score / split_text.length * 100).to_i * 2
    # Normalize blown out number to within 100 standard deviation of 0
    if raw_score > 100
      raw_score = 100
    elsif raw_score < -100
      raw_score = -100
    else
      raw_score
    end
  end

  def self.sentiment_score(matched_values)
    matched_values.reduce(:+) || 0
  end

  def self.split_polarity(matched_values)
    # split array based on negative or positive values
    split_array = matched_values.partition { |rating| rating > 0 }
    positive_ratings, negative_ratings = split_array.first, split_array.last
  end

  def self.calculate_polarity(matched_values)
    # two arrays of positive and negative values
    positive_ratings, negative_ratings = split_polarity(matched_values)
    total_positive = positive_ratings.reduce(:+) || 0
    # calcualte average; total positive / array length of positives
    avg_p = positive_ratings.empty? ? total_positive : total_positive / positive_ratings.length
    total_negative = negative_ratings.reduce(:+) || 0
    # calcualte average; total negative / array length of negatives
    avg_n = negative_ratings.empty? ? total_negative : total_negative / negative_ratings.length
    # polarity
    avg_p - avg_n
  end

  def self.create_sentiment(record, matched_values, split_text)
    polarity_score = self.calculate_polarity(matched_values)
    sentiment_score = self.sentiment_score(matched_values)
    sentiment_percentage = self.calculate_sentiment_percentage(split_text, sentiment_score)
    record.create_sentiment(sentiment_score: sentiment_score, polarity_score: polarity_score, sentiment_percentage: sentiment_percentage)
  end
end
