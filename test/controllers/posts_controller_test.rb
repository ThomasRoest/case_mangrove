require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  test "should get index" do 
    get :index
    assert_response :success
    assert_select "h1", "Alle berichten"
  end
  
end
