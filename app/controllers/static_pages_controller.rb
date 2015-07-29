class StaticPagesController < ApplicationController
  def home
    @posts = Post.published.first(3)
  end
end
