class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(params[:tag])
    @tag.save
    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
  end
end
