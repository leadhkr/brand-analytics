class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]
	before_action :find_group, only: [:new, :show, :create]

	def create
		@document = Document.new(document_params)
		@document.group = @group
		if @document.save
			find_or_create_sentiment
			render json: {
				document: @document,
				document_path: group_document_path(@group, @document),
				sentiment: @document.sentiment.display_sentiment,
				polarity_score: @document.sentiment.polarity_score,
				sentiment_percentage: @document.sentiment.sentiment_percentage
			}
		else
			redirect_to group_path(@group)
		end
	end

	def show
		find_or_create_sentiment
	end

	def destroy
		@document.destroy
		render json: @document
	end

	private

	def find_document
		@document = Document.find(params[:id])
	end

	def find_group
		@group = Group.find(params[:group_id])
	end

	def document_params
		params.require(:document).permit(:text, :title)
	end

	def find_or_create_sentiment
		 Parser.text_score(@document)
	end
end
