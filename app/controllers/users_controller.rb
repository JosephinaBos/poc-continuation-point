class UsersController < ApplicationController

  before_action :find_user

  def update
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
    sign_out
    flash[:success] = "You are logged out"
    redirect_to root_path
  end

 private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :pasword_confirmation)
  end
end
