class DocumentsController < ApplicationController
	def new
		@document = Document.new
	end

	def create
		@document = Document.create(document_params)
		redirect_to @document
	end

	def show
		
	end

	private

	def document_params
		params.require(:document).permit(:text)
	end
end
