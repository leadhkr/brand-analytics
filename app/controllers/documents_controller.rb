class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]

	def new
		@document = Document.new
		@doc_keywords = @document.document_keywords.build
		@keyword = @doc_keywords.build_keyword
	end

	def create
		file = params[:document][:text]
		if Parser.validate_filetype(file)
			text = File.open(file.tempfile).read
			@document = Document.create(text: text)
		else
			flash[:error] = "Please upload a valid filetype"
			redirect_to new_document_path
		end
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
