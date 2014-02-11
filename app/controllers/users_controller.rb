class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user.id = current_user.id
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :id)
  end
end

