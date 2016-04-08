class HomeController < ApplicationController
	def index
		if user_signed_in?
			render plain: 'Logged In'
			# redirect_to group_path(current_user.group)
		else
			render plain: 'Not Logged In'
		end
	end
end
