class PrototypesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototypes.create(prototype_params)
    redirect_to root_path
      # Prototype.create(title: prototype_params[:catch_copy], image: tweet_params[:image], text: tweet_params[:text])
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end

end
