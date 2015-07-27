require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(title: "test title", body: "test body")
  end

  test "should be valid" do 
    assert @post.valid?
  end
  
  test "should have a tile" do 
    @post.title = " "
    assert_not @post.valid?
  end
end
