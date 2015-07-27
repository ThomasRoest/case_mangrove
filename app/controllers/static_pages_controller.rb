class StaticPagesController < ApplicationController
  def home
    @posts = Post.last(3)
  end
end
