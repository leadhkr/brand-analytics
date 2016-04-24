class SessionsController < ApplicationController
  skip_before_action :authorized?

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user.group
    else
      binding.pry
      flash.now[:errors] = 'Email or Password is incorrect'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
