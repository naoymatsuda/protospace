class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_prototype, only: [:show, :destroy, :edit, :update]

  def index
    @prototypes = Prototype.order(id: :desc)
  end

  def show
    @like = Like.find_by(user_id: @prototype.user_id, prototype_id: params[:id])
    @likes = Like.where(prototype_id: params[:id])
    @comment = Comment.new
    @comments = Comment.where( prototype_id: params[:id]).order('created_at ASC')
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path, notice: 'your post is success'
    else
      render action: :new
      redirect_to new_prototype_path alert 'your post was unsuccessful'
    end
  end

  def destroy
    if current_user.id == @prototype.user.id
      @prototype.destroy
      redirect_to root_path, notice: 'your post is deleted'
    else
     redirect_to :back, alert: 'unsuccessful'
    end
  end

  def edit
  end

  def update
    if current_user.id == @prototype.user.id
      @prototype.update(prototype_params)
      redirect_to root_path, notice: 'your update is success'
    else
     redirect_to :back, alert: 'your update is unsuccessful'
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:id, :status, :image]).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

end
