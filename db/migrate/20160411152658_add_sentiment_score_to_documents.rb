class AddSentimentScoreToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :sentiment_score, :float
  end
end
