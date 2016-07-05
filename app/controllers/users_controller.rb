class UsersController < ApplicationController

before_action :authenticate_user!
before_action :set_user

  def edit
    redirect_to new_user_session_path unless user_signed_in?
  end

  def update
    if @user.update(update_params)
      redirect_to :only => [action: :show]
    else
      render :only => [action: :edit]
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def update_params
    params.require(:user).permit(:name, :avatar, :email, :member, :profile, :works)
  end

end
