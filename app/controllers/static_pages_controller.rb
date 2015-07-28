class StaticPagesController < ApplicationController
  def home
    @posts = Post.first(3)
  end
end
