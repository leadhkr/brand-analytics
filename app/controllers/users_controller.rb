class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :validate_user, except: [:new, :create]
  skip_before_action :authorized?, only: [:new, :create]

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

  def show
  end

  def edit
  end

  def update
    @user.update(user_params) ? (redirect_to @user.group) : (render 'edit')
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :email,
      :password,:password_confirmation, :business_account
    )
  end

  def find_user
    @user = User.find(params[:id])
  end
end
