class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:edit, :update]
  before_action :set_user,only: [:update, :show]

  def edit
    redirect_to new_user_session_path unless user_signed_in?
  end

  def update
    if @user.update(update_params)
      redirect_to action: :show, notice: 'your user information was updated'
    else
      render action: :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def update_params
    params.require(:user).permit(:name, :avatar, :email, :member, :profile, :works)
  end

end
