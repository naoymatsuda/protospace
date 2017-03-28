class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag = ActsAsTaggableOn::Tag.most_used.find_by(name: params[:name])
    @prototypes = Prototype.tagged_with(@tag)
  end
end
