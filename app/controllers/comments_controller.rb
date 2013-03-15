class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to author_post(@comment.post.author, @comment.post)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = post.comments.new(params[:comment])
    @comment.save
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
    redirect_to author_post_path(@author, @post)
    @post.save
  end

  def edit
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    @comment.save
  end
end
