class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:name, :avatar, :email, :member, :profile, :works)
  end

end
