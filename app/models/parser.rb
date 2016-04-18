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

  def self.create_sentiment(record, matched_values, split_text)
    polarity_score = self.calculate_polarity(matched_values)
    sentiment_score = self.sentiment_score(matched_values)
    sentiment_percentage = self.calculate_sentiment_percentage(split_text, sentiment_score)
    record.create_sentiment(sentiment_score: sentiment_score, polarity_score: polarity_score, sentiment_percentage: sentiment_percentage)
  end

  private

  def self.strip_text(record)
    record.text.gsub(/[#@,.:;?"-]/, '')
  end

  def self.calculate_sentiment_percentage(split_text, sentiment_score)
    raw_score = (sentiment_score / split_text.length * 100).to_i * 2
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
    split_array = matched_values.partition { |rating| rating > 0 }
    positive_ratings, negative_ratings = split_array.first, split_array.last
  end

  def self.calculate_polarity(matched_values)
    positive_ratings, negative_ratings = split_polarity(matched_values)
    total_positive = positive_ratings.reduce(:+) || 0
    avg_p = positive_ratings.empty? ? total_positive : total_positive / positive_ratings.length
    total_negative = negative_ratings.reduce(:+) || 0
    avg_n = negative_ratings.empty? ? total_negative : total_negative / negative_ratings.length
    avg_p - avg_n
  end

  def self.find_matches(word_count, keyword_count)
    word_count.keys.each_with_object({}) do |word, value_hash|
      sliced_word = word.slice(0, word.length-1) #slice off ! at end
      if word == word.upcase && keyword_count[word.downcase] #check if capitalized
        value_hash[word] = word_count[word] * (keyword_count[word.downcase] * 2)
      elsif keyword_count[sliced_word] && word[-1] == "!" #check word without exclamation point
        value_hash[word] = word_count[word] * (keyword_count[sliced_word] * 2)
      elsif keyword_count[word]
        value_hash[word] = word_count[word] * keyword_count[word]
      end
    end
  end



  def self.words(stripped_text)
    stripped_text.split(" ")
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
