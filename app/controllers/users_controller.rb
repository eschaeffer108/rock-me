class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :date_of_birth)
  end
end
