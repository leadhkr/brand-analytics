class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @group = User.find_group(@user.email) if @user.business_account?
    @group ? (@user.group = @group) : (render 'new')

    if @user.save
      session[:user_id] = @user.id
      redirect_to @group
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
      :password,:password_confirmation, :business_account
    )
  end
end
