class HomeController < ApplicationController
	skip_before_action :authorized?

	def index
		redirect_to current_user.group if logged_in?
	end
end
