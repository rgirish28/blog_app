class PostsController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @posts = @author.posts
  end

  def create
    @author = Author.find(params[:author_id])
    @post = @author.posts.new(params[:post])
    @post.save
    redirect_to author_posts_path(@post.author, @post)
  end

  def new
    @author = Author.find(params[:author_id])
    @post = Post.new
  end

  def edit
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
end
