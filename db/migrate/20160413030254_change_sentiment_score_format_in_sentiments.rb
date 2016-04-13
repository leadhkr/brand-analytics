class ChangeSentimentScoreFormatInSentiments < ActiveRecord::Migration
  def change
    change_column :sentiments, :sentiment_score, :float
    change_column :sentiments, :polarity_score, :float    
  end
end
