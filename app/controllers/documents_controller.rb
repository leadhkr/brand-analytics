# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  text       :text
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

class DocumentsController < ApplicationController
	before_action :find_document, except: [:new, :create]
	before_action :find_group, only: [:new, :show, :create]

	def new
		@document = Document.new
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
