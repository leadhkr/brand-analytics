class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  before_action :authorized?

  private

  def validate_user
    if current_user.id != params[:id].to_i
      redirect_to current_user
    end
  end

  def validate_group
    if current_user.group.id != params[:id].to_i
      redirect_to current_user.group
    end
  end

  def authorized?
    redirect_to login_path if !logged_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
