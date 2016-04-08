class GroupsController < ApplicationController
	
  before_action :find_group, except: [:new, :create]


	def new
    @group = Group.new
	end

	def create
		@group = Group.create(group_params)
		redirect_to @group
	end

	def show
	end

  def edit
  end

  def update
  end

  def destroy
  end


	private

	def group_params
		params.require(:group).permit(:name, :street_address, :city, :state, :zip_code, :domain)
	end

  def find_group
    @group = Group.find(params[:id])
  end

end