class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]
	before_action :find_group, only: [:new, :show, :create]

	def new
		@document = Document.new
		@doc_keywords = @document.document_keywords.build
		@keyword = @doc_keywords.build_keyword
	end

	def create
		file = params[:document][:text]
		title = params[:document][:title]
		text = File.open(file.tempfile).read
		@document = Document.new(title: title, text: text, group: @group)
		if Parser.validate_filetype(file) && @document.save
			redirect_to  group_document_path(@group, @document)
		else
			flash[:error] = "Please upload a valid filetype" if !Parser.validate_filetype(file)
			render 'new'
		end
	end

	def show
		Parser.text_score(@document)
	end


	private

	def find_document
		@document = Document.find(params[:id])
	end

	def find_group
		@group = Group.find(params[:group_id])
	end

	def keyword_params
		params.require(:document).permit(keyword:[:name])
	end

end
