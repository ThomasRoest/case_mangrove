class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # def create
  #   @post = Post.create(post_params)
  # end

  def edit
  end

  def update
  end

  def destroy
  end
end
