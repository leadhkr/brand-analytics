class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]

	def new
		@document = Document.new
	end

	def create
		file = params[:document][:text].tempfile
		text = File.open(file).read
		@document = Document.create(text: text)
		redirect_to @document
	end

	def show
		render plain: @document.text
	end

	private

	def find_document
		@document = Document.find(params[:id])
	end
end
