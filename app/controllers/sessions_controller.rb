class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash.now[:errors] = 'Email or Password is incorrect'
      render 'new'
    end
  end

  def destroy
  end
end
