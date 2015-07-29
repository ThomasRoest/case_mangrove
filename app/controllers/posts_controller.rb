class PostsController < ApplicationController
  def index
    @post_categories = PostCategory.all
    @posts = Post.published.includes(:post_category).page(params[:page])
    @posts = Post.post_category(params[:post_category]).published.page(params[:page]) if params[:post_category].present?
  end

  def show
    @post = Post.find(params[:id])
  end

  # def new
  #   @post = Post.new
  # end

  # # def create
  # #   @post = Post.create(post_params)
  # # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end

