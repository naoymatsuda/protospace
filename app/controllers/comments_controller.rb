class CommentsController < ApplicationController

  def create
    current_user.comments.create(prototype_id: params[:prototype_id], comment: params.require(:comment)[:comment])
    comments_set
  end

  private
  def comments_set
    @prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:prototype_id])
  end

end
