require 'test_helper'

class ViewPostsTest < ActionDispatch::IntegrationTest

  def setup
    @category = PostCategory.create(id: 1, name: "Actueel")
    @post = Post.create(id: 1, title: "test title", body: "test body", post_category_id: @category.id)
  end

  test "view posts" do 
    get posts_path
    assert_template "posts/index"
    # assert_select "a[href=?]", post_path(@post)
    get post_path(@post)
    assert_template "posts/show"
  end
end
