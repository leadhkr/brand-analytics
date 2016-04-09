class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def logged_in?
    true # replace with call to current_user method
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
