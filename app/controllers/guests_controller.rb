class GuestsController < ApplicationController
  skip_before_action :authorized?, only: [:create]

  def create
    @document = Document.new(document_params)
    find_or_create_sentiment
      render json: {
        sentiment: @document.sentiment.display_sentiment,
        polarity_score: @document.sentiment.polarity_score,
        sentiment_percentage: @document.sentiment.sentiment_percentage
      }
  end

  private

  def document_params
    params.require(:document).permit(:text, :title)
  end

  def find_or_create_sentiment
   Parser.text_score(@document)
  end
end
