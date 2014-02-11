class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.all << User.create!(user_params)
    redirect_to :root
  end

  private

  def user_params
    require.params(:user).permit(:email, :password, :id)
  end
end
