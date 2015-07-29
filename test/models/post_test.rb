require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(title: "test title", body: "test body", post_category_id: 1)
  end

  test "should be valid" do 
    assert @post.valid?
  end
  
  test "title should be present" do 
    @post.title = " "
    assert_not @post.valid?
  end

  test "body should be present" do 
    @post.title = " "
    assert_not @post.valid?
  end

  test "category id should be present" do 
    @post.post_category_id = " "
    assert_not @post.valid?
  end
end
