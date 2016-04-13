class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]
	before_action :find_group, only: [:new, :show, :create]

	def create
		file = params[:document][:text]
		file_type = Document.parse_file_type(file.content_type)
		title = params[:document][:title]
		text = File.open(file.tempfile).read
		@document = Document.new(title: title, text: text, file_type: file_type, group: @group)

		if @document.save
			redirect_to group_document_path(@group, @document)
		else
			redirect_to group_path(@group)
		end
	end

	def show
		find_or_create_sentiment
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

	def find_or_create_sentiment
		 @document.sentiment || Parser.text_score(@document)
	end
end
