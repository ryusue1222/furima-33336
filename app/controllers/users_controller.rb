class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_registration_path
    else
      render root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday)
  end
end
