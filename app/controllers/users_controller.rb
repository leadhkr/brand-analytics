class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :validate_user, except: [:new, :create]
  skip_before_action :authorized?, only: [:new, :create]

  def new
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name])
  end

  def create
    @user = User.new(new_user_params)
    @group = User.find_group(@user.email)
    @user.group = @group if @group

    if @user.save && !@group.nil?
      session[:user_id] = @user.id
      redirect_to @group || @user
    else
      flash[:error] = "Sorry, the company does not exist."
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(edit_user_params)
      redirect_to @user.group
    else
      render 'edit'
    end
  end

  private

  def new_user_params
    params.require(:user).permit(
      :first_name, :last_name, :email,
      :password,:password_confirmation
    )
  end

  def edit_user_params
    params.require(:user).permit(
      :first_name, :last_name, :password,:password_confirmation
    )
  end

  def find_user
    @user = User.find(params[:id])
  end
end
