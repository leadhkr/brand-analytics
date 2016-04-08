class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]

	def new
		@document = Document.new
		@doc_keywords = @document.document_keywords.build
		@keyword = @doc_keywords.build_keyword
	end

	def create
		keyword = params[:document][:keyword][:name]
		file = params[:document][:text].tempfile
		text = File.open(file).read

		@document = Document.create(text: text, keywords: keyword)
		binding.pry
		# redirect_to @document
	end

	def show
		@document.analyze_text
	end


	private

	def find_document
		@document = Document.find(params[:id])
	end

	def keyword_params
		params.require(:document).permit(keyword:[:name])
	end

end
