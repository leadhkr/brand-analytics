require 'spec_helper'
describe Parser do
  describe 'parse text' do
    let (:record) { build(:document) }
    let (:record2) { build(:document) }

    it 'strips text correctly' do
      record.text = "Hi there, how are you?"
      stripped = Parser.strip_text(record)
      expect(stripped).to eq("Hi there how are you")

      record.text = "it\"s true: aliens are coming;"
      stripped = Parser.strip_text(record)
      expect(stripped).to eq("its true aliens are coming")
    end

    it 'checks for upper case and applies proper weight' do
      record.text = "WTF man, I was just joking"
      record2.text = "wtf man, I was just joking"
      sentiment = Parser.text_score(record)
      sentiment2 = Parser.text_score(record2)
      expect(sentiment.sentiment_score).to eq(sentiment2.sentiment_score * 2)
    end

    it 'checks for ! and applies proper weight' do
      record.text = "wtf! I was just joking"
      record2.text = "wtf. I was just joking"
      sentiment = Parser.text_score(record)
      sentiment2 = Parser.text_score(record2)
      expect(sentiment.sentiment_score).to eq(sentiment2.sentiment_score * 2)
    end

    it 'returns sentiment scores for text' do
      record.text = "wtf are you doing? stop hating on me"
      sentiment = Parser.text_score(record)
      expect(sentiment.sentiment_score).to eq(-8.0)
      expect(sentiment.polarity_score).to eq(2)
    end

    it 'never exceeds sensible sentiment percentages' do
      record.text = "VICTIMIZED blamed! 😡 😡"
      sentiment = Parser.text_score(record)
      expect(sentiment.sentiment_percentage).to eq(-100)
    end
  end
end
