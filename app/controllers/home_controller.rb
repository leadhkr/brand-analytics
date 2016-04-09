class HomeController < ApplicationController
	def index
		render plain: 'Logged In' if logged_in? # redirect_to group_path(current_user.group)
	end
end
