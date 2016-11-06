class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def show
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if prototype.save
      redirect_to root_path, notice: 'your post is success'
    else
      render action: :new
      redirect_to new_prototype_path alert 'ろぐいんしろ'
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:id, :status, :image]).merge(user_id: current_user.id)
  end

end